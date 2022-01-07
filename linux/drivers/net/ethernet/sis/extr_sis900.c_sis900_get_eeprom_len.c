
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis900_private {int eeprom_size; } ;
struct net_device {int dummy; } ;


 struct sis900_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int sis900_get_eeprom_len(struct net_device *dev)
{
 struct sis900_private *sis_priv = netdev_priv(dev);

 return sis_priv->eeprom_size;
}
