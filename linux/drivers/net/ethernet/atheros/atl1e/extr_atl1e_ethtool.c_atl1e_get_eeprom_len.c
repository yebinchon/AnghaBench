
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct atl1e_adapter {int hw; } ;


 int AT_EEPROM_LEN ;
 int atl1e_check_eeprom_exist (int *) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atl1e_get_eeprom_len(struct net_device *netdev)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);

 if (!atl1e_check_eeprom_exist(&adapter->hw))
  return AT_EEPROM_LEN;
 else
  return 0;
}
