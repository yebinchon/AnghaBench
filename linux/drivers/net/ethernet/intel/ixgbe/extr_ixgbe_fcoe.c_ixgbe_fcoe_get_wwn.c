
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ixgbe_mac_info {int wwnn_prefix; int wwpn_prefix; scalar_t__* san_addr; } ;
struct TYPE_2__ {struct ixgbe_mac_info mac; } ;
struct ixgbe_adapter {TYPE_1__ hw; } ;


 int EINVAL ;


 scalar_t__ is_valid_ether_addr (scalar_t__*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

int ixgbe_fcoe_get_wwn(struct net_device *netdev, u64 *wwn, int type)
{
 u16 prefix = 0xffff;
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_mac_info *mac = &adapter->hw.mac;

 switch (type) {
 case 129:
  prefix = mac->wwnn_prefix;
  break;
 case 128:
  prefix = mac->wwpn_prefix;
  break;
 default:
  break;
 }

 if ((prefix != 0xffff) &&
     is_valid_ether_addr(mac->san_addr)) {
  *wwn = ((u64) prefix << 48) |
         ((u64) mac->san_addr[0] << 40) |
         ((u64) mac->san_addr[1] << 32) |
         ((u64) mac->san_addr[2] << 24) |
         ((u64) mac->san_addr[3] << 16) |
         ((u64) mac->san_addr[4] << 8) |
         ((u64) mac->san_addr[5]);
  return 0;
 }
 return -EINVAL;
}
