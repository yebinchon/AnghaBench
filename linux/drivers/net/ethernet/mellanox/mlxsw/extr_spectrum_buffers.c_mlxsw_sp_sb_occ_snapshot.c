
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mlxsw_sp_sb_sr_occ_query_cb_ctx {size_t masked_count; size_t local_port_1; } ;
struct mlxsw_sp {TYPE_1__* sb_vals; int * ports; } ;
struct mlxsw_core {int dummy; } ;
typedef int cb_ctx ;
struct TYPE_2__ {int pool_count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LIST_HEAD (int ) ;
 size_t MASKED_COUNT_MAX ;
 size_t MLXSW_PORT_CPU_PORT ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_SBSR_LEN ;
 int MLXSW_SP_SB_EG_TC_COUNT ;
 int MLXSW_SP_SB_ING_TC_COUNT ;
 int bulk_list ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int memcpy (unsigned long*,struct mlxsw_sp_sb_sr_occ_query_cb_ctx*,int) ;
 struct mlxsw_sp* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 size_t mlxsw_core_max_ports (struct mlxsw_core*) ;
 int mlxsw_reg_sbsr_egress_port_mask_set (char*,size_t,int) ;
 int mlxsw_reg_sbsr_ingress_port_mask_set (char*,size_t,int) ;
 int mlxsw_reg_sbsr_pack (char*,int) ;
 int mlxsw_reg_sbsr_pg_buff_mask_set (char*,int,int) ;
 int mlxsw_reg_sbsr_tclass_mask_set (char*,int,int) ;
 int mlxsw_reg_trans_bulk_wait (int *) ;
 int mlxsw_reg_trans_query (struct mlxsw_core*,int ,char*,int *,int ,unsigned long) ;
 int mlxsw_sp_sb_pm_occ_query (struct mlxsw_sp*,size_t,int,int *) ;
 int mlxsw_sp_sb_sr_occ_query_cb ;
 int sbsr ;

int mlxsw_sp_sb_occ_snapshot(struct mlxsw_core *mlxsw_core,
        unsigned int sb_index)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_core_driver_priv(mlxsw_core);
 struct mlxsw_sp_sb_sr_occ_query_cb_ctx cb_ctx;
 unsigned long cb_priv;
 LIST_HEAD(bulk_list);
 char *sbsr_pl;
 u8 masked_count;
 u8 local_port_1;
 u8 local_port;
 int i;
 int err;
 int err2;

 sbsr_pl = kmalloc(MLXSW_REG_SBSR_LEN, GFP_KERNEL);
 if (!sbsr_pl)
  return -ENOMEM;

 local_port = MLXSW_PORT_CPU_PORT;
next_batch:
 local_port_1 = local_port;
 masked_count = 0;
 mlxsw_reg_sbsr_pack(sbsr_pl, 0);
 for (i = 0; i < MLXSW_SP_SB_ING_TC_COUNT; i++)
  mlxsw_reg_sbsr_pg_buff_mask_set(sbsr_pl, i, 1);
 for (i = 0; i < MLXSW_SP_SB_EG_TC_COUNT; i++)
  mlxsw_reg_sbsr_tclass_mask_set(sbsr_pl, i, 1);
 for (; local_port < mlxsw_core_max_ports(mlxsw_core); local_port++) {
  if (!mlxsw_sp->ports[local_port])
   continue;
  if (local_port != MLXSW_PORT_CPU_PORT) {

   mlxsw_reg_sbsr_ingress_port_mask_set(sbsr_pl,
            local_port, 1);
  }
  mlxsw_reg_sbsr_egress_port_mask_set(sbsr_pl, local_port, 1);
  for (i = 0; i < mlxsw_sp->sb_vals->pool_count; i++) {
   err = mlxsw_sp_sb_pm_occ_query(mlxsw_sp, local_port, i,
             &bulk_list);
   if (err)
    goto out;
  }
  if (++masked_count == MASKED_COUNT_MAX)
   goto do_query;
 }

do_query:
 cb_ctx.masked_count = masked_count;
 cb_ctx.local_port_1 = local_port_1;
 memcpy(&cb_priv, &cb_ctx, sizeof(cb_ctx));
 err = mlxsw_reg_trans_query(mlxsw_core, MLXSW_REG(sbsr), sbsr_pl,
        &bulk_list, mlxsw_sp_sb_sr_occ_query_cb,
        cb_priv);
 if (err)
  goto out;
 if (local_port < mlxsw_core_max_ports(mlxsw_core)) {
  local_port++;
  goto next_batch;
 }

out:
 err2 = mlxsw_reg_trans_bulk_wait(&bulk_list);
 if (!err)
  err = err2;
 kfree(sbsr_pl);
 return err;
}
