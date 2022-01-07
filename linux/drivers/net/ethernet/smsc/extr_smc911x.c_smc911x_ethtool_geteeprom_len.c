
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SMC911X_EEPROM_LEN ;

__attribute__((used)) static int smc911x_ethtool_geteeprom_len(struct net_device *dev)
{
  return SMC911X_EEPROM_LEN;
}
