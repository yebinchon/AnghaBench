
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enc28j60_net {int max_pk_counter; } ;


 int EPKTCNT ;
 int KERN_DEBUG ;
 int enc28j60_hw_rx (struct net_device*) ;
 int locked_regb_read (struct enc28j60_net*,int ) ;
 int netdev_printk (int ,struct net_device*,char*,int) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_intr (struct enc28j60_net*) ;
 scalar_t__ netif_msg_rx_status (struct enc28j60_net*) ;

__attribute__((used)) static int enc28j60_rx_interrupt(struct net_device *ndev)
{
 struct enc28j60_net *priv = netdev_priv(ndev);
 int pk_counter, ret;

 pk_counter = locked_regb_read(priv, EPKTCNT);
 if (pk_counter && netif_msg_intr(priv))
  netdev_printk(KERN_DEBUG, ndev, "intRX, pk_cnt: %d\n",
         pk_counter);
 if (pk_counter > priv->max_pk_counter) {

  priv->max_pk_counter = pk_counter;
  if (netif_msg_rx_status(priv) && priv->max_pk_counter > 1)
   netdev_printk(KERN_DEBUG, ndev, "RX max_pk_cnt: %d\n",
          priv->max_pk_counter);
 }
 ret = pk_counter;
 while (pk_counter-- > 0)
  enc28j60_hw_rx(ndev);

 return ret;
}
