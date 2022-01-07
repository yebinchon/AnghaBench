
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netsec_priv {int dummy; } ;
struct net_device {TYPE_1__* phydev; } ;
struct TYPE_2__ {scalar_t__ link; } ;


 struct netsec_priv* netdev_priv (struct net_device*) ;
 int netsec_start_gmac (struct netsec_priv*) ;
 int netsec_stop_gmac (struct netsec_priv*) ;
 int phy_print_status (TYPE_1__*) ;

__attribute__((used)) static void netsec_phy_adjust_link(struct net_device *ndev)
{
 struct netsec_priv *priv = netdev_priv(ndev);

 if (ndev->phydev->link)
  netsec_start_gmac(priv);
 else
  netsec_stop_gmac(priv);

 phy_print_status(ndev->phydev);
}
