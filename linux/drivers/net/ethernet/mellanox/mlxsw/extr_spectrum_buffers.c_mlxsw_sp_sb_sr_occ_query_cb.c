
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct mlxsw_sp_sb_sr_occ_query_cb_ctx {size_t local_port_1; size_t masked_count; } ;
struct TYPE_2__ {int max; int cur; } ;
struct mlxsw_sp_sb_cm {TYPE_1__ occ; } ;
struct mlxsw_sp {int * ports; } ;
struct mlxsw_core {int dummy; } ;
typedef int cb_ctx ;


 size_t MLXSW_PORT_CPU_PORT ;
 int MLXSW_REG_SBXX_DIR_EGRESS ;
 int MLXSW_REG_SBXX_DIR_INGRESS ;
 int MLXSW_SP_SB_EG_TC_COUNT ;
 int MLXSW_SP_SB_ING_TC_COUNT ;
 int memcpy (struct mlxsw_sp_sb_sr_occ_query_cb_ctx*,unsigned long*,int) ;
 struct mlxsw_sp* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 size_t mlxsw_core_max_ports (struct mlxsw_core*) ;
 int mlxsw_reg_sbsr_rec_unpack (char*,int ,int *,int *) ;
 struct mlxsw_sp_sb_cm* mlxsw_sp_sb_cm_get (struct mlxsw_sp*,size_t,int,int ) ;

__attribute__((used)) static void mlxsw_sp_sb_sr_occ_query_cb(struct mlxsw_core *mlxsw_core,
     char *sbsr_pl, size_t sbsr_pl_len,
     unsigned long cb_priv)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_core_driver_priv(mlxsw_core);
 struct mlxsw_sp_sb_sr_occ_query_cb_ctx cb_ctx;
 u8 masked_count;
 u8 local_port;
 int rec_index = 0;
 struct mlxsw_sp_sb_cm *cm;
 int i;

 memcpy(&cb_ctx, &cb_priv, sizeof(cb_ctx));

 masked_count = 0;
 for (local_port = cb_ctx.local_port_1;
      local_port < mlxsw_core_max_ports(mlxsw_core); local_port++) {
  if (!mlxsw_sp->ports[local_port])
   continue;
  if (local_port == MLXSW_PORT_CPU_PORT) {

   masked_count++;
   continue;
  }
  for (i = 0; i < MLXSW_SP_SB_ING_TC_COUNT; i++) {
   cm = mlxsw_sp_sb_cm_get(mlxsw_sp, local_port, i,
      MLXSW_REG_SBXX_DIR_INGRESS);
   mlxsw_reg_sbsr_rec_unpack(sbsr_pl, rec_index++,
        &cm->occ.cur, &cm->occ.max);
  }
  if (++masked_count == cb_ctx.masked_count)
   break;
 }
 masked_count = 0;
 for (local_port = cb_ctx.local_port_1;
      local_port < mlxsw_core_max_ports(mlxsw_core); local_port++) {
  if (!mlxsw_sp->ports[local_port])
   continue;
  for (i = 0; i < MLXSW_SP_SB_EG_TC_COUNT; i++) {
   cm = mlxsw_sp_sb_cm_get(mlxsw_sp, local_port, i,
      MLXSW_REG_SBXX_DIR_EGRESS);
   mlxsw_reg_sbsr_rec_unpack(sbsr_pl, rec_index++,
        &cm->occ.cur, &cm->occ.max);
  }
  if (++masked_count == cb_ctx.masked_count)
   break;
 }
}
