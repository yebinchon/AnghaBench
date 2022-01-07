
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
struct ag71xx {int dummy; } ;


 int ag71xx_hw_disable (struct ag71xx*) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int phy_disconnect (int ) ;
 int phy_stop (int ) ;

__attribute__((used)) static int ag71xx_stop(struct net_device *ndev)
{
 struct ag71xx *ag = netdev_priv(ndev);

 phy_stop(ndev->phydev);
 phy_disconnect(ndev->phydev);
 ag71xx_hw_disable(ag);

 return 0;
}
