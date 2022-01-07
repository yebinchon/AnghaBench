
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int igbvf_set_eeprom(struct net_device *netdev,
       struct ethtool_eeprom *eeprom, u8 *bytes)
{
 return -EOPNOTSUPP;
}
