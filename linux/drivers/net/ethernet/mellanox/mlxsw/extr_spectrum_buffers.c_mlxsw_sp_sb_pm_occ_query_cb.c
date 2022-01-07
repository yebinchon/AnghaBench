
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max; int cur; } ;
struct mlxsw_sp_sb_pm {TYPE_1__ occ; } ;
struct mlxsw_core {int dummy; } ;


 int mlxsw_reg_sbpm_unpack (char*,int *,int *) ;

__attribute__((used)) static void mlxsw_sp_sb_pm_occ_query_cb(struct mlxsw_core *mlxsw_core,
     char *sbpm_pl, size_t sbpm_pl_len,
     unsigned long cb_priv)
{
 struct mlxsw_sp_sb_pm *pm = (struct mlxsw_sp_sb_pm *) cb_priv;

 mlxsw_reg_sbpm_unpack(sbpm_pl, &pm->occ.cur, &pm->occ.max);
}
