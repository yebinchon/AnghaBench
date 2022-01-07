
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int AX_EEPROM_LEN ;

int asix_get_eeprom_len(struct net_device *net)
{
 return AX_EEPROM_LEN;
}
