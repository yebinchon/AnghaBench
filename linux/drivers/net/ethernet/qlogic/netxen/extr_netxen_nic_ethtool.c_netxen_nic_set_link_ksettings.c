
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ port_type; } ;
struct netxen_adapter {int capabilities; int link_autoneg; int link_duplex; int link_speed; TYPE_1__ ahw; } ;
struct net_device {TYPE_3__* netdev_ops; } ;
struct TYPE_5__ {int autoneg; int duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_2__ base; } ;
struct TYPE_6__ {int (* ndo_open ) (struct net_device*) ;int (* ndo_stop ) (struct net_device*) ;} ;


 int EIO ;
 int EOPNOTSUPP ;
 scalar_t__ NETXEN_NIC_GBE ;
 int NX_FW_CAPABILITY_GBE_LINK_CFG ;
 int NX_RCODE_NOT_SUPPORTED ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int nx_fw_cmd_set_gbe_port (struct netxen_adapter*,int ,int ,int ) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

__attribute__((used)) static int
netxen_nic_set_link_ksettings(struct net_device *dev,
         const struct ethtool_link_ksettings *cmd)
{
 struct netxen_adapter *adapter = netdev_priv(dev);
 u32 speed = cmd->base.speed;
 int ret;

 if (adapter->ahw.port_type != NETXEN_NIC_GBE)
  return -EOPNOTSUPP;

 if (!(adapter->capabilities & NX_FW_CAPABILITY_GBE_LINK_CFG))
  return -EOPNOTSUPP;

 ret = nx_fw_cmd_set_gbe_port(adapter, speed, cmd->base.duplex,
         cmd->base.autoneg);
 if (ret == NX_RCODE_NOT_SUPPORTED)
  return -EOPNOTSUPP;
 else if (ret)
  return -EIO;

 adapter->link_speed = speed;
 adapter->link_duplex = cmd->base.duplex;
 adapter->link_autoneg = cmd->base.autoneg;

 if (!netif_running(dev))
  return 0;

 dev->netdev_ops->ndo_stop(dev);
 return dev->netdev_ops->ndo_open(dev);
}
