
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;


 int et131x_enable_txrx (struct net_device*) ;
 int phy_start (int ) ;

__attribute__((used)) static void et131x_up(struct net_device *netdev)
{
 et131x_enable_txrx(netdev);
 phy_start(netdev->phydev);
}
