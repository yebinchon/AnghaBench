
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int eeprom_wc; } ;
struct net_device {int dummy; } ;


 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_get_eeprom_len(struct net_device *netdev)
{
 struct nic *nic = netdev_priv(netdev);
 return nic->eeprom_wc << 1;
}
