
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct lan78xx_net {int intf; } ;
struct ethtool_eeprom {int len; int offset; int magic; } ;


 int LAN78XX_EEPROM_MAGIC ;
 int lan78xx_read_raw_eeprom (struct lan78xx_net*,int ,int ,int *) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_ethtool_get_eeprom(struct net_device *netdev,
          struct ethtool_eeprom *ee, u8 *data)
{
 struct lan78xx_net *dev = netdev_priv(netdev);
 int ret;

 ret = usb_autopm_get_interface(dev->intf);
 if (ret)
  return ret;

 ee->magic = LAN78XX_EEPROM_MAGIC;

 ret = lan78xx_read_raw_eeprom(dev, ee->offset, ee->len, data);

 usb_autopm_put_interface(dev->intf);

 return ret;
}
