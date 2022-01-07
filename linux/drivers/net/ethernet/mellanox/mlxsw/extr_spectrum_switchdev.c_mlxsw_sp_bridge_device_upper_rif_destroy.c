
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_rif_destroy_by_dev (struct mlxsw_sp*,struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_bridge_device_upper_rif_destroy(struct net_device *dev,
          void *data)
{
 struct mlxsw_sp *mlxsw_sp = data;

 mlxsw_sp_rif_destroy_by_dev(mlxsw_sp, dev);
 return 0;
}
