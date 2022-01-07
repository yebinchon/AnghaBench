
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int dev; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_fid* mlxsw_sp_fid_8021q_lookup (struct mlxsw_sp*,int ) ;
 struct mlxsw_sp* mlxsw_sp_lower_get (int ) ;

__attribute__((used)) static struct mlxsw_sp_fid *
mlxsw_sp_bridge_8021q_fid_lookup(struct mlxsw_sp_bridge_device *bridge_device,
     u16 vid)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_lower_get(bridge_device->dev);

 return mlxsw_sp_fid_8021q_lookup(mlxsw_sp, vid);
}
