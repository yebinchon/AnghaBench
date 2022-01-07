
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_sp_vr {int id; } ;
struct mlxsw_sp {int core; TYPE_1__* router; } ;
typedef enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;


 int MAX_VRS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_RALST_LEN ;
 int MLXSW_REG_RALTA_LEN ;
 int MLXSW_REG_RALTB_LEN ;
 int MLXSW_REG_RALUE_LEN ;
 int MLXSW_REG_RALUE_OP_WRITE_WRITE ;
 int mlxsw_reg_ralst_pack (char*,int,int ) ;
 int mlxsw_reg_ralta_pack (char*,int,int,int ) ;
 int mlxsw_reg_raltb_pack (char*,int ,int,int ) ;
 int mlxsw_reg_ralue_act_ip2me_pack (char*) ;
 int mlxsw_reg_ralue_pack (char*,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ralst ;
 int ralta ;
 int raltb ;
 int ralue ;

__attribute__((used)) static int __mlxsw_sp_router_set_abort_trap(struct mlxsw_sp *mlxsw_sp,
         enum mlxsw_reg_ralxx_protocol proto,
         u8 tree_id)
{
 char ralta_pl[MLXSW_REG_RALTA_LEN];
 char ralst_pl[MLXSW_REG_RALST_LEN];
 int i, err;

 mlxsw_reg_ralta_pack(ralta_pl, 1, proto, tree_id);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ralta), ralta_pl);
 if (err)
  return err;

 mlxsw_reg_ralst_pack(ralst_pl, 0xff, tree_id);
 err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ralst), ralst_pl);
 if (err)
  return err;

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_VRS); i++) {
  struct mlxsw_sp_vr *vr = &mlxsw_sp->router->vrs[i];
  char raltb_pl[MLXSW_REG_RALTB_LEN];
  char ralue_pl[MLXSW_REG_RALUE_LEN];

  mlxsw_reg_raltb_pack(raltb_pl, vr->id, proto, tree_id);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(raltb),
          raltb_pl);
  if (err)
   return err;

  mlxsw_reg_ralue_pack(ralue_pl, proto,
         MLXSW_REG_RALUE_OP_WRITE_WRITE, vr->id, 0);
  mlxsw_reg_ralue_act_ip2me_pack(ralue_pl);
  err = mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ralue),
          ralue_pl);
  if (err)
   return err;
 }

 return 0;
}
