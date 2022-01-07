
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;
typedef int __le16 ;


 int EINVAL ;
 scalar_t__ dm_read_eeprom_word (struct usbnet*,int,int *) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dm9601_get_eeprom(struct net_device *net,
        struct ethtool_eeprom *eeprom, u8 * data)
{
 struct usbnet *dev = netdev_priv(net);
 __le16 *ebuf = (__le16 *) data;
 int i;


 if ((eeprom->offset % 2) || (eeprom->len % 2))
  return -EINVAL;

 for (i = 0; i < eeprom->len / 2; i++) {
  if (dm_read_eeprom_word(dev, eeprom->offset / 2 + i,
     &ebuf[i]) < 0)
   return -EINVAL;
 }
 return 0;
}
