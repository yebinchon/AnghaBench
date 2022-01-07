
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int maxrate; } ;
struct mlxsw_sp_port {TYPE_1__ dcb; } ;
struct ieee_maxrate {int dummy; } ;


 int memcpy (struct ieee_maxrate*,int ,int) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_dcbnl_ieee_getmaxrate(struct net_device *dev,
       struct ieee_maxrate *maxrate)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 memcpy(maxrate, mlxsw_sp_port->dcb.maxrate, sizeof(*maxrate));

 return 0;
}
