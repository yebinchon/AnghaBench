
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int mii; } ;
struct net_device {int dummy; } ;


 int mii_nway_restart (int *) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_nway_reset(struct net_device *netdev)
{
 struct nic *nic = netdev_priv(netdev);
 return mii_nway_restart(&nic->mii);
}
