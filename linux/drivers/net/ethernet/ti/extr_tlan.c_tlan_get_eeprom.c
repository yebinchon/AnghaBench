
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int dummy; } ;


 int EIO ;
 int TLAN_EEPROM_SIZE ;
 scalar_t__ tlan_ee_read_byte (struct net_device*,int,int *) ;

__attribute__((used)) static int tlan_get_eeprom(struct net_device *dev,
      struct ethtool_eeprom *eeprom, u8 *data)
{
 int i;

 for (i = 0; i < TLAN_EEPROM_SIZE; i++)
  if (tlan_ee_read_byte(dev, i, &data[i]))
   return -EIO;

 return 0;
}
