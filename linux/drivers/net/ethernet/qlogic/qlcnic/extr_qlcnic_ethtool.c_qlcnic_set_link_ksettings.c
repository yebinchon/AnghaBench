
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {TYPE_3__* netdev_ops; } ;
struct TYPE_5__ {int autoneg; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_6__ {int (* ndo_open ) (struct net_device*) ;int (* ndo_stop ) (struct net_device*) ;} ;
struct TYPE_4__ {scalar_t__ port_type; int link_autoneg; int link_duplex; int link_speed; } ;


 int EOPNOTSUPP ;
 scalar_t__ QLCNIC_GBE ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_get_port_type (struct qlcnic_adapter*) ;
 int qlcnic_83xx_set_link_ksettings (struct qlcnic_adapter*,struct ethtool_link_ksettings const*) ;
 int qlcnic_set_port_config (struct qlcnic_adapter*,struct ethtool_link_ksettings const*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

__attribute__((used)) static int qlcnic_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *ecmd)
{
 u32 ret = 0;
 struct qlcnic_adapter *adapter = netdev_priv(dev);

 if (qlcnic_83xx_check(adapter))
  qlcnic_83xx_get_port_type(adapter);

 if (adapter->ahw->port_type != QLCNIC_GBE)
  return -EOPNOTSUPP;

 if (qlcnic_83xx_check(adapter))
  ret = qlcnic_83xx_set_link_ksettings(adapter, ecmd);
 else
  ret = qlcnic_set_port_config(adapter, ecmd);

 if (!ret)
  return ret;

 adapter->ahw->link_speed = ecmd->base.speed;
 adapter->ahw->link_duplex = ecmd->base.duplex;
 adapter->ahw->link_autoneg = ecmd->base.autoneg;

 if (!netif_running(dev))
  return 0;

 dev->netdev_ops->ndo_stop(dev);
 return dev->netdev_ops->ndo_open(dev);
}
