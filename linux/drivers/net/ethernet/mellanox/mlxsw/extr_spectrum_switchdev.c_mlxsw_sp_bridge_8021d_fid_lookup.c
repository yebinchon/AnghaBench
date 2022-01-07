
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {TYPE_1__* dev; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_2__ {int ifindex; } ;


 struct mlxsw_sp_fid* mlxsw_sp_fid_8021d_lookup (struct mlxsw_sp*,int ) ;
 struct mlxsw_sp* mlxsw_sp_lower_get (TYPE_1__*) ;

__attribute__((used)) static struct mlxsw_sp_fid *
mlxsw_sp_bridge_8021d_fid_lookup(struct mlxsw_sp_bridge_device *bridge_device,
     u16 vid)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_lower_get(bridge_device->dev);


 if (vid)
  return ((void*)0);

 return mlxsw_sp_fid_8021d_lookup(mlxsw_sp, bridge_device->dev->ifindex);
}
