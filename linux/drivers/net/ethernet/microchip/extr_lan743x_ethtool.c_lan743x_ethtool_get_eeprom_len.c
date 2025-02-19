
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lan743x_adapter {int flags; } ;


 int LAN743X_ADAPTER_FLAG_OTP ;
 int MAX_EEPROM_SIZE ;
 int MAX_OTP_SIZE ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int lan743x_ethtool_get_eeprom_len(struct net_device *netdev)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);

 if (adapter->flags & LAN743X_ADAPTER_FLAG_OTP)
  return MAX_OTP_SIZE;

 return MAX_EEPROM_SIZE;
}
