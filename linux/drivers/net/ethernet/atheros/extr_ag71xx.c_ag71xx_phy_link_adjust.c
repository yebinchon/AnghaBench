
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ag71xx {int dummy; } ;


 int ag71xx_link_adjust (struct ag71xx*,int) ;
 struct ag71xx* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ag71xx_phy_link_adjust(struct net_device *ndev)
{
 struct ag71xx *ag = netdev_priv(ndev);

 ag71xx_link_adjust(ag, 1);
}
