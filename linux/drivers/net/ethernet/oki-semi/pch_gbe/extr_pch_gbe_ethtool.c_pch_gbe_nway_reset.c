
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_adapter {int mii; } ;
struct net_device {int dummy; } ;


 int mii_nway_restart (int *) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int pch_gbe_nway_reset(struct net_device *netdev)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);

 return mii_nway_restart(&adapter->mii);
}
