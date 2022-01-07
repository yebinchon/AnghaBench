
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct lan743x_adapter {int flags; } ;
struct ethtool_eeprom {scalar_t__ magic; int len; int offset; } ;


 int EINVAL ;
 int LAN743X_ADAPTER_FLAG_OTP ;
 scalar_t__ LAN743X_EEPROM_MAGIC ;
 scalar_t__ LAN743X_OTP_MAGIC ;
 int lan743x_eeprom_write (struct lan743x_adapter*,int ,int ,int *) ;
 int lan743x_otp_write (struct lan743x_adapter*,int ,int ,int *) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int lan743x_ethtool_set_eeprom(struct net_device *netdev,
          struct ethtool_eeprom *ee, u8 *data)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);
 int ret = -EINVAL;

 if (adapter->flags & LAN743X_ADAPTER_FLAG_OTP) {

  if (ee->magic == LAN743X_OTP_MAGIC) {
   ret = lan743x_otp_write(adapter, ee->offset,
      ee->len, data);
  }
 } else {
  if (ee->magic == LAN743X_EEPROM_MAGIC) {
   ret = lan743x_eeprom_write(adapter, ee->offset,
         ee->len, data);
  }
 }

 return ret;
}
