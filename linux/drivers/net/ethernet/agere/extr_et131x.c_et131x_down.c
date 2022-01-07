
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;


 int et131x_disable_txrx (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static void et131x_down(struct net_device *netdev)
{

 netif_trans_update(netdev);

 phy_stop(netdev->phydev);
 et131x_disable_txrx(netdev);
}
