
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_minidump {int md_capture_mask; int md_enabled; int md_dump_size; } ;
struct netxen_adapter {int fw_version; scalar_t__ fw_mdump_rdy; struct netxen_minidump mdump; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int version; int flag; int len; } ;


 int ETH_FW_DUMP_DISABLE ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
netxen_get_dump_flag(struct net_device *netdev, struct ethtool_dump *dump)
{
 struct netxen_adapter *adapter = netdev_priv(netdev);
 struct netxen_minidump *mdump = &adapter->mdump;
 if (adapter->fw_mdump_rdy)
  dump->len = mdump->md_dump_size;
 else
  dump->len = 0;

 if (!mdump->md_enabled)
  dump->flag = ETH_FW_DUMP_DISABLE;
 else
  dump->flag = mdump->md_capture_mask;

 dump->version = adapter->fw_version;
 return 0;
}
