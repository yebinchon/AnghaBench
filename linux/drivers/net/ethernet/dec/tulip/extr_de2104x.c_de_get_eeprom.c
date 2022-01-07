
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {scalar_t__ offset; scalar_t__ magic; int len; } ;
struct de_private {int ee_data; } ;


 int DE_EEPROM_SIZE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int memcpy (int *,int ,int ) ;
 struct de_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int de_get_eeprom(struct net_device *dev,
    struct ethtool_eeprom *eeprom, u8 *data)
{
 struct de_private *de = netdev_priv(dev);

 if (!de->ee_data)
  return -EOPNOTSUPP;
 if ((eeprom->offset != 0) || (eeprom->magic != 0) ||
     (eeprom->len != DE_EEPROM_SIZE))
  return -EINVAL;
 memcpy(data, de->ee_data, eeprom->len);

 return 0;
}
