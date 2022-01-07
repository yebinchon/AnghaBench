
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SMSC9420_EEPROM_SIZE ;

__attribute__((used)) static int smsc9420_ethtool_get_eeprom_len(struct net_device *dev)
{
 return SMSC9420_EEPROM_SIZE;
}
