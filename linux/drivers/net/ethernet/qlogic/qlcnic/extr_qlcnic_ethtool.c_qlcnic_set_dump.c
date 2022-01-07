
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_fw_dump {int tmpl_hdr; int clr; } ;
struct qlcnic_adapter {int state; int flags; TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct ethtool_dump {int flag; } ;
struct TYPE_2__ {struct qlcnic_fw_dump fw_dump; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int EOPNOTSUPP ;




 int QLCNIC_FW_RESET_OWNER ;


 int __QLCNIC_MAINTENANCE_MODE ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_check_fw_dump_state (struct qlcnic_adapter*) ;
 int qlcnic_dev_request_reset (struct qlcnic_adapter*,int) ;
 int qlcnic_disable_fw_dump_state (struct qlcnic_adapter*) ;
 int qlcnic_enable_fw_dump_state (struct qlcnic_adapter*) ;
 int* qlcnic_fw_dump_level ;
 int qlcnic_set_dump_mask (struct qlcnic_adapter*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
qlcnic_set_dump(struct net_device *netdev, struct ethtool_dump *val)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_fw_dump *fw_dump = &adapter->ahw->fw_dump;
 bool valid_mask = 0;
 int i, ret = 0;

 switch (val->flag) {
 case 131:
  if (!fw_dump->tmpl_hdr) {
   netdev_err(netdev, "FW dump not supported\n");
   ret = -EOPNOTSUPP;
   break;
  }

  if (!qlcnic_check_fw_dump_state(adapter)) {
   netdev_info(netdev, "FW dump not enabled\n");
   ret = -EOPNOTSUPP;
   break;
  }

  if (fw_dump->clr) {
   netdev_info(netdev,
        "Previous dump not cleared, not forcing dump\n");
   break;
  }

  netdev_info(netdev, "Forcing a FW dump\n");
  qlcnic_dev_request_reset(adapter, val->flag);
  break;
 case 133:
  if (!fw_dump->tmpl_hdr) {
   netdev_err(netdev, "FW dump not supported\n");
   ret = -EOPNOTSUPP;
   break;
  }

  ret = qlcnic_disable_fw_dump_state(adapter);
  break;

 case 132:
  if (!fw_dump->tmpl_hdr) {
   netdev_err(netdev, "FW dump not supported\n");
   ret = -EOPNOTSUPP;
   break;
  }

  ret = qlcnic_enable_fw_dump_state(adapter);
  break;

 case 130:
  netdev_info(netdev, "Forcing a FW reset\n");
  qlcnic_dev_request_reset(adapter, val->flag);
  adapter->flags &= ~QLCNIC_FW_RESET_OWNER;
  break;

 case 128:
 case 129:
  if (test_bit(__QLCNIC_MAINTENANCE_MODE, &adapter->state))
   netdev_info(netdev, "Device is in non-operational state\n");
  break;

 default:
  if (!fw_dump->tmpl_hdr) {
   netdev_err(netdev, "FW dump not supported\n");
   ret = -EOPNOTSUPP;
   break;
  }

  for (i = 0; i < ARRAY_SIZE(qlcnic_fw_dump_level); i++) {
   if (val->flag == qlcnic_fw_dump_level[i]) {
    valid_mask = 1;
    break;
   }
  }

  if (valid_mask) {
   ret = qlcnic_set_dump_mask(adapter, val->flag);
  } else {
   netdev_info(netdev, "Invalid dump level: 0x%x\n",
        val->flag);
   ret = -EINVAL;
  }
 }
 return ret;
}
