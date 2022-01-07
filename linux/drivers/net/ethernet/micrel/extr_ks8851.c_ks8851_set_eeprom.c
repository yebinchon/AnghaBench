
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ks8851_net {int eeprom; } ;
struct ethtool_eeprom {int offset; int len; scalar_t__ magic; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ KS_EEPROM_MAGIC ;
 int eeprom_93cx6_read (int *,int,int*) ;
 int eeprom_93cx6_wren (int *,int) ;
 int eeprom_93cx6_write (int *,int,int) ;
 scalar_t__ ks8851_eeprom_claim (struct ks8851_net*) ;
 int ks8851_eeprom_release (struct ks8851_net*) ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks8851_set_eeprom(struct net_device *dev,
        struct ethtool_eeprom *ee, u8 *data)
{
 struct ks8851_net *ks = netdev_priv(dev);
 int offset = ee->offset;
 int len = ee->len;
 u16 tmp;


 if (len != 1)
  return -EINVAL;

 if (ee->magic != KS_EEPROM_MAGIC)
  return -EINVAL;

 if (ks8851_eeprom_claim(ks))
  return -ENOENT;

 eeprom_93cx6_wren(&ks->eeprom, 1);




 eeprom_93cx6_read(&ks->eeprom, offset/2, &tmp);

 if (offset & 1) {
  tmp &= 0xff;
  tmp |= *data << 8;
 } else {
  tmp &= 0xff00;
  tmp |= *data;
 }

 eeprom_93cx6_write(&ks->eeprom, offset/2, tmp);
 eeprom_93cx6_wren(&ks->eeprom, 0);

 ks8851_eeprom_release(ks);

 return 0;
}
