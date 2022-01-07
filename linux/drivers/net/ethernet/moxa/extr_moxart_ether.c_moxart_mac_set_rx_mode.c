
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct moxart_mac_priv_t {int txlock; scalar_t__ base; int reg_maccr; } ;


 int HT_MULTI_EN ;
 int IFF_ALLMULTI ;
 int IFF_MULTICAST ;
 int IFF_PROMISC ;
 int RCV_ALL ;
 scalar_t__ REG_MAC_CTRL ;
 int RX_MULTIPKT ;
 int moxart_mac_setmulticast (struct net_device*) ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void moxart_mac_set_rx_mode(struct net_device *ndev)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);

 spin_lock_irq(&priv->txlock);

 (ndev->flags & IFF_PROMISC) ? (priv->reg_maccr |= RCV_ALL) :
          (priv->reg_maccr &= ~RCV_ALL);

 (ndev->flags & IFF_ALLMULTI) ? (priv->reg_maccr |= RX_MULTIPKT) :
           (priv->reg_maccr &= ~RX_MULTIPKT);

 if ((ndev->flags & IFF_MULTICAST) && netdev_mc_count(ndev)) {
  priv->reg_maccr |= HT_MULTI_EN;
  moxart_mac_setmulticast(ndev);
 } else {
  priv->reg_maccr &= ~HT_MULTI_EN;
 }

 writel(priv->reg_maccr, priv->base + REG_MAC_CTRL);

 spin_unlock_irq(&priv->txlock);
}
