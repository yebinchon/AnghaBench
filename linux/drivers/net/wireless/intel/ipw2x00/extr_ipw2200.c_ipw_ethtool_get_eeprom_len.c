
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int IPW_EEPROM_IMAGE_SIZE ;

__attribute__((used)) static int ipw_ethtool_get_eeprom_len(struct net_device *dev)
{
 return IPW_EEPROM_IMAGE_SIZE;
}
