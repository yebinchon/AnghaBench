
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_minidump {int md_enabled; int md_capture_mask; } ;
struct netxen_adapter {int flags; int fw_mdump_rdy; struct netxen_minidump mdump; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int* FW_DUMP_LEVELS ;
 int NETXEN_FW_RESET_OWNER ;




 int netdev_info (struct net_device*,char*,...) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;
 int nx_dev_request_reset (struct netxen_adapter*) ;

__attribute__((used)) static int
netxen_set_dump(struct net_device *netdev, struct ethtool_dump *val)
{
 int i;
 struct netxen_adapter *adapter = netdev_priv(netdev);
 struct netxen_minidump *mdump = &adapter->mdump;

 switch (val->flag) {
 case 129:
  if (!mdump->md_enabled) {
   netdev_info(netdev, "FW dump not enabled\n");
   return 0;
  }
  if (adapter->fw_mdump_rdy) {
   netdev_info(netdev, "Previous dump not cleared, not forcing dump\n");
   return 0;
  }
  netdev_info(netdev, "Forcing a fw dump\n");
  nx_dev_request_reset(adapter);
  break;
 case 131:
  if (mdump->md_enabled) {
   netdev_info(netdev, "Disabling FW Dump\n");
   mdump->md_enabled = 0;
  }
  break;
 case 130:
  if (!mdump->md_enabled) {
   netdev_info(netdev, "Enabling FW dump\n");
   mdump->md_enabled = 1;
  }
  break;
 case 128:
  netdev_info(netdev, "Forcing FW reset\n");
  nx_dev_request_reset(adapter);
  adapter->flags &= ~NETXEN_FW_RESET_OWNER;
  break;
 default:
  for (i = 0; i < ARRAY_SIZE(FW_DUMP_LEVELS); i++) {
   if (val->flag == FW_DUMP_LEVELS[i]) {
    mdump->md_capture_mask = val->flag;
    netdev_info(netdev,
     "Driver mask changed to: 0x%x\n",
     mdump->md_capture_mask);
    return 0;
   }
  }
  netdev_info(netdev,
   "Invalid dump level: 0x%x\n", val->flag);
  return -EINVAL;
 }

 return 0;
}
