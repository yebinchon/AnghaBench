
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int speed; int duplex; int link; } ;
struct net_local {int last_link; struct phy_device* phy_dev; } ;
struct net_device {int dummy; } ;


 struct net_local* netdev_priv (struct net_device*) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void xemaclite_adjust_link(struct net_device *ndev)
{
 struct net_local *lp = netdev_priv(ndev);
 struct phy_device *phy = lp->phy_dev;
 int link_state;


 link_state = phy->speed | (phy->duplex << 1) | phy->link;

 if (lp->last_link != link_state) {
  lp->last_link = link_state;
  phy_print_status(phy);
 }
}
