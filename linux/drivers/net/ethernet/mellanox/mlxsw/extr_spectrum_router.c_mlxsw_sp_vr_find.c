
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlxsw_sp_vr {scalar_t__ tb_id; } ;
struct mlxsw_sp {TYPE_1__* router; int core; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;


 int MAX_VRS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 scalar_t__ mlxsw_sp_fix_tb_id (scalar_t__) ;
 scalar_t__ mlxsw_sp_vr_is_used (struct mlxsw_sp_vr*) ;

__attribute__((used)) static struct mlxsw_sp_vr *mlxsw_sp_vr_find(struct mlxsw_sp *mlxsw_sp,
         u32 tb_id)
{
 struct mlxsw_sp_vr *vr;
 int i;

 tb_id = mlxsw_sp_fix_tb_id(tb_id);

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_VRS); i++) {
  vr = &mlxsw_sp->router->vrs[i];
  if (mlxsw_sp_vr_is_used(vr) && vr->tb_id == tb_id)
   return vr;
 }
 return ((void*)0);
}
