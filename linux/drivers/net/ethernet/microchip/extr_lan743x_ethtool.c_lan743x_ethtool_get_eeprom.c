
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct lan743x_adapter {int flags; } ;
struct ethtool_eeprom {int len; int offset; } ;


 int LAN743X_ADAPTER_FLAG_OTP ;
 int lan743x_eeprom_read (struct lan743x_adapter*,int ,int ,int *) ;
 int lan743x_otp_read (struct lan743x_adapter*,int ,int ,int *) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int lan743x_ethtool_get_eeprom(struct net_device *netdev,
          struct ethtool_eeprom *ee, u8 *data)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);
 int ret = 0;

 if (adapter->flags & LAN743X_ADAPTER_FLAG_OTP)
  ret = lan743x_otp_read(adapter, ee->offset, ee->len, data);
 else
  ret = lan743x_eeprom_read(adapter, ee->offset, ee->len, data);

 return ret;
}
