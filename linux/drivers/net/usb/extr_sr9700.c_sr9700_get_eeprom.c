
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
 struct usbnet* netdev_priv (struct net_device*) ;
 int sr_read_eeprom_word (struct usbnet*,int,int *) ;

__attribute__((used)) static int sr9700_get_eeprom(struct net_device *netdev,
        struct ethtool_eeprom *eeprom, u8 *data)
{
 struct usbnet *dev = netdev_priv(netdev);
 __le16 *buf = (__le16 *)data;
 int ret = 0;
 int i;


 if ((eeprom->offset & 0x01) || (eeprom->len & 0x01))
  return -EINVAL;

 for (i = 0; i < eeprom->len / 2; i++) {
  ret = sr_read_eeprom_word(dev, eeprom->offset / 2 + i, buf + i);
  if (ret < 0)
   break;
 }

 return ret;
}
