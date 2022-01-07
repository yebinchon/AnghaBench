
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_eth_rxdesc {void* addr; void* status; } ;
struct sh_eth_private {int num_rx_ring; int num_tx_ring; int ** tx_skbuff; int ** rx_skbuff; struct sh_eth_rxdesc* rx_ring; } ;
struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int EESR ;
 void* cpu_to_le32 (int) ;
 int dev_kfree_skb (int *) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_err (struct sh_eth_private*,int ,struct net_device*,char*,int ) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sh_eth_dev_init (struct net_device*) ;
 int sh_eth_read (struct net_device*,int ) ;
 int timer ;

__attribute__((used)) static void sh_eth_tx_timeout(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 struct sh_eth_rxdesc *rxdesc;
 int i;

 netif_stop_queue(ndev);

 netif_err(mdp, timer, ndev,
    "transmit timed out, status %8.8x, resetting...\n",
    sh_eth_read(ndev, EESR));


 ndev->stats.tx_errors++;


 for (i = 0; i < mdp->num_rx_ring; i++) {
  rxdesc = &mdp->rx_ring[i];
  rxdesc->status = cpu_to_le32(0);
  rxdesc->addr = cpu_to_le32(0xBADF00D0);
  dev_kfree_skb(mdp->rx_skbuff[i]);
  mdp->rx_skbuff[i] = ((void*)0);
 }
 for (i = 0; i < mdp->num_tx_ring; i++) {
  dev_kfree_skb(mdp->tx_skbuff[i]);
  mdp->tx_skbuff[i] = ((void*)0);
 }


 sh_eth_dev_init(ndev);

 netif_start_queue(ndev);
}
