
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_private {int duplex; scalar_t__ speed; int lock; scalar_t__ no_ether_link; TYPE_1__* cd; scalar_t__ link; } ;
struct phy_device {int duplex; scalar_t__ speed; scalar_t__ link; } ;
struct net_device {struct phy_device* phydev; } ;
struct TYPE_2__ {scalar_t__ no_psr; int (* set_rate ) (struct net_device*) ;int (* set_duplex ) (struct net_device*) ;} ;


 int ECMR ;
 int ECMR_TXF ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_link (struct sh_eth_private*) ;
 int phy_print_status (struct phy_device*) ;
 int sh_eth_modify (struct net_device*,int ,int ,int ) ;
 int sh_eth_rcv_snd_disable (struct net_device*) ;
 int sh_eth_rcv_snd_enable (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

__attribute__((used)) static void sh_eth_adjust_link(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 struct phy_device *phydev = ndev->phydev;
 unsigned long flags;
 int new_state = 0;

 spin_lock_irqsave(&mdp->lock, flags);


 if (mdp->cd->no_psr || mdp->no_ether_link)
  sh_eth_rcv_snd_disable(ndev);

 if (phydev->link) {
  if (phydev->duplex != mdp->duplex) {
   new_state = 1;
   mdp->duplex = phydev->duplex;
   if (mdp->cd->set_duplex)
    mdp->cd->set_duplex(ndev);
  }

  if (phydev->speed != mdp->speed) {
   new_state = 1;
   mdp->speed = phydev->speed;
   if (mdp->cd->set_rate)
    mdp->cd->set_rate(ndev);
  }
  if (!mdp->link) {
   sh_eth_modify(ndev, ECMR, ECMR_TXF, 0);
   new_state = 1;
   mdp->link = phydev->link;
  }
 } else if (mdp->link) {
  new_state = 1;
  mdp->link = 0;
  mdp->speed = 0;
  mdp->duplex = -1;
 }


 if ((mdp->cd->no_psr || mdp->no_ether_link) && phydev->link)
  sh_eth_rcv_snd_enable(ndev);

 spin_unlock_irqrestore(&mdp->lock, flags);

 if (new_state && netif_msg_link(mdp))
  phy_print_status(phydev);
}
