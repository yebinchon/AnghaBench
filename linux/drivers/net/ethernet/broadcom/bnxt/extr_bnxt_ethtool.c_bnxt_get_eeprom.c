
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int offset; int len; } ;


 int EINVAL ;
 int bnxt_get_nvram_directory (struct net_device*,int ,int *) ;
 int bnxt_get_nvram_item (struct net_device*,int,int,int ,int *) ;
 int netdev_err (struct net_device*,char*,int) ;

__attribute__((used)) static int bnxt_get_eeprom(struct net_device *dev,
      struct ethtool_eeprom *eeprom,
      u8 *data)
{
 u32 index;
 u32 offset;

 if (eeprom->offset == 0)
  return bnxt_get_nvram_directory(dev, eeprom->len, data);

 index = eeprom->offset >> 24;
 offset = eeprom->offset & 0xffffff;

 if (index == 0) {
  netdev_err(dev, "unsupported index value: %d\n", index);
  return -EINVAL;
 }

 return bnxt_get_nvram_item(dev, index - 1, offset, eeprom->len, data);
}
