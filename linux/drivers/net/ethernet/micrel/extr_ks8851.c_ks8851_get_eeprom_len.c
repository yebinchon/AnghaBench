
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks8851_net {int rc_ccr; } ;


 int CCR_EEPROM ;
 struct ks8851_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ks8851_get_eeprom_len(struct net_device *dev)
{
 struct ks8851_net *ks = netdev_priv(dev);


 return ks->rc_ccr & CCR_EEPROM ? 128 : 0;
}
