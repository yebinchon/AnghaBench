
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ks8851_net {int eeprom; } ;
struct ethtool_eeprom {int offset; int len; int magic; } ;
typedef int __le16 ;


 int EINVAL ;
 int ENOENT ;
 int KS_EEPROM_MAGIC ;
 int eeprom_93cx6_multiread (int *,int,int *,int) ;
 scalar_t__ ks8851_eeprom_claim (struct ks8851_net*) ;
 int ks8851_eeprom_release (struct ks8851_net*) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks8851_get_eeprom(struct net_device *dev,
        struct ethtool_eeprom *ee, u8 *data)
{
 struct ks8851_net *ks = netdev_priv(dev);
 int offset = ee->offset;
 int len = ee->len;


 if (len & 1 || offset & 1)
  return -EINVAL;

 if (ks8851_eeprom_claim(ks))
  return -ENOENT;

 ee->magic = KS_EEPROM_MAGIC;

 eeprom_93cx6_multiread(&ks->eeprom, offset/2, (__le16 *)data, len/2);
 ks8851_eeprom_release(ks);

 return 0;
}
