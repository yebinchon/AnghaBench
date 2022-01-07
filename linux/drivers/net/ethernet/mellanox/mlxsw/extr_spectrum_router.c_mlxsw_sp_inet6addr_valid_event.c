
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dev_addr; } ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
struct in6_validator_info {int extack; TYPE_1__* i6vi_dev; } ;
struct TYPE_2__ {struct net_device* dev; } ;


 int __mlxsw_sp_inetaddr_event (struct mlxsw_sp*,struct net_device*,unsigned long,int ) ;
 struct mlxsw_sp* mlxsw_sp_lower_get (struct net_device*) ;
 struct mlxsw_sp_rif* mlxsw_sp_rif_find_by_dev (struct mlxsw_sp*,struct net_device*) ;
 int mlxsw_sp_rif_should_config (struct mlxsw_sp_rif*,struct net_device*,unsigned long) ;
 int mlxsw_sp_router_port_check_rif_addr (struct mlxsw_sp*,struct net_device*,int ,int ) ;
 int notifier_from_errno (int) ;

int mlxsw_sp_inet6addr_valid_event(struct notifier_block *unused,
       unsigned long event, void *ptr)
{
 struct in6_validator_info *i6vi = (struct in6_validator_info *) ptr;
 struct net_device *dev = i6vi->i6vi_dev->dev;
 struct mlxsw_sp *mlxsw_sp;
 struct mlxsw_sp_rif *rif;
 int err = 0;

 mlxsw_sp = mlxsw_sp_lower_get(dev);
 if (!mlxsw_sp)
  goto out;

 rif = mlxsw_sp_rif_find_by_dev(mlxsw_sp, dev);
 if (!mlxsw_sp_rif_should_config(rif, dev, event))
  goto out;

 err = mlxsw_sp_router_port_check_rif_addr(mlxsw_sp, dev, dev->dev_addr,
        i6vi->extack);
 if (err)
  goto out;

 err = __mlxsw_sp_inetaddr_event(mlxsw_sp, dev, event, i6vi->extack);
out:
 return notifier_from_errno(err);
}
