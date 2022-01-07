
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int dummy; } ;
struct net_device {int dummy; } ;


 int PCI_D3hot ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int velocity_set_power_state (struct velocity_info*,int ) ;

__attribute__((used)) static void velocity_ethtool_down(struct net_device *dev)
{
 struct velocity_info *vptr = netdev_priv(dev);
 if (!netif_running(dev))
  velocity_set_power_state(vptr, PCI_D3hot);
}
