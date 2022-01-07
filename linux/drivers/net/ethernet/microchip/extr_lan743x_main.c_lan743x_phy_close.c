
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * phydev; } ;
struct lan743x_adapter {struct net_device* netdev; } ;


 int phy_disconnect (int *) ;
 int phy_stop (int *) ;

__attribute__((used)) static void lan743x_phy_close(struct lan743x_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 phy_stop(netdev->phydev);
 phy_disconnect(netdev->phydev);
 netdev->phydev = ((void*)0);
}
