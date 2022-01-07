
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dlci_local {int slave; } ;


 int dev_set_mtu (int ,int) ;
 struct dlci_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dlci_change_mtu(struct net_device *dev, int new_mtu)
{
 struct dlci_local *dlp = netdev_priv(dev);

 return dev_set_mtu(dlp->slave, new_mtu);
}
