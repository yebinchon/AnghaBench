
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_fix_tb_id (int ) ;
 struct mlxsw_sp_vr* mlxsw_sp_vr_create (struct mlxsw_sp*,int ,struct netlink_ext_ack*) ;
 struct mlxsw_sp_vr* mlxsw_sp_vr_find (struct mlxsw_sp*,int ) ;

__attribute__((used)) static struct mlxsw_sp_vr *mlxsw_sp_vr_get(struct mlxsw_sp *mlxsw_sp, u32 tb_id,
        struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_vr *vr;

 tb_id = mlxsw_sp_fix_tb_id(tb_id);
 vr = mlxsw_sp_vr_find(mlxsw_sp, tb_id);
 if (!vr)
  vr = mlxsw_sp_vr_create(mlxsw_sp, tb_id, extack);
 return vr;
}
