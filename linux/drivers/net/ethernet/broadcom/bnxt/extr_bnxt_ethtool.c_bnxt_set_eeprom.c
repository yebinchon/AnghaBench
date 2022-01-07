
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; int offset; int len; } ;
struct bnxt {int dummy; } ;


 int BNXT_PF (struct bnxt*) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int bnxt_dir_type_is_executable (int) ;
 int bnxt_erase_nvram_directory (struct net_device*,int) ;
 int bnxt_flash_nvram (struct net_device*,int,int,int,int,int*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_set_eeprom(struct net_device *dev,
      struct ethtool_eeprom *eeprom,
      u8 *data)
{
 struct bnxt *bp = netdev_priv(dev);
 u8 index, dir_op;
 u16 type, ext, ordinal, attr;

 if (!BNXT_PF(bp)) {
  netdev_err(dev, "NVM write not supported from a virtual function\n");
  return -EINVAL;
 }

 type = eeprom->magic >> 16;

 if (type == 0xffff) {
  index = eeprom->magic & 0xff;
  dir_op = eeprom->magic >> 8;
  if (index == 0)
   return -EINVAL;
  switch (dir_op) {
  case 0x0e:
   if (eeprom->offset != ~eeprom->magic)
    return -EINVAL;
   return bnxt_erase_nvram_directory(dev, index - 1);
  default:
   return -EINVAL;
  }
 }


 if (bnxt_dir_type_is_executable(type) == 1)
  return -EOPNOTSUPP;
 ext = eeprom->magic & 0xffff;
 ordinal = eeprom->offset >> 16;
 attr = eeprom->offset & 0xffff;

 return bnxt_flash_nvram(dev, type, ordinal, ext, attr, data,
    eeprom->len);
}
