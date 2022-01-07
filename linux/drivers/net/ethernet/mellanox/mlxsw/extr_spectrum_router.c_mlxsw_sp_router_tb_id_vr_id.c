
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_vr {int id; } ;
struct mlxsw_sp {int dummy; } ;


 int ESRCH ;
 struct mlxsw_sp_vr* mlxsw_sp_vr_find (struct mlxsw_sp*,int ) ;

int mlxsw_sp_router_tb_id_vr_id(struct mlxsw_sp *mlxsw_sp, u32 tb_id,
    u16 *vr_id)
{
 struct mlxsw_sp_vr *vr;

 vr = mlxsw_sp_vr_find(mlxsw_sp, tb_id);
 if (!vr)
  return -ESRCH;
 *vr_id = vr->id;

 return 0;
}
