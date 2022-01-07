
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct txrx_desc_t {size_t control; } ;
struct sk_buff {size_t len; int data; } ;
struct netdata_local {int num_used_tx_buffs; size_t* tx_stat_v; size_t* skblen; int lock; int net_base; scalar_t__ tx_buff_v; struct txrx_desc_t* tx_desc_v; } ;
struct net_device {int dummy; } ;


 size_t ENET_MAXF_SIZE ;
 int ENET_TX_DESC ;
 int LPC_ENET_TXPRODUCEINDEX (int ) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 size_t TXDESC_CONTROL_INT ;
 size_t TXDESC_CONTROL_LAST ;
 int WARN (int,char*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int memcpy (scalar_t__,int ,size_t) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 size_t readl (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (size_t,int ) ;

__attribute__((used)) static int lpc_eth_hard_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct netdata_local *pldat = netdev_priv(ndev);
 u32 len, txidx;
 u32 *ptxstat;
 struct txrx_desc_t *ptxrxdesc;

 len = skb->len;

 spin_lock_irq(&pldat->lock);

 if (pldat->num_used_tx_buffs >= (ENET_TX_DESC - 1)) {


  netif_stop_queue(ndev);
  spin_unlock_irq(&pldat->lock);
  WARN(1, "BUG! TX request when no free TX buffers!\n");
  return NETDEV_TX_BUSY;
 }


 txidx = readl(LPC_ENET_TXPRODUCEINDEX(pldat->net_base));


 ptxstat = &pldat->tx_stat_v[txidx];
 *ptxstat = 0;
 ptxrxdesc = &pldat->tx_desc_v[txidx];
 ptxrxdesc->control =
  (len - 1) | TXDESC_CONTROL_LAST | TXDESC_CONTROL_INT;


 memcpy(pldat->tx_buff_v + txidx * ENET_MAXF_SIZE, skb->data, len);


 pldat->skblen[txidx] = len;
 pldat->num_used_tx_buffs++;


 txidx++;
 if (txidx >= ENET_TX_DESC)
  txidx = 0;
 writel(txidx, LPC_ENET_TXPRODUCEINDEX(pldat->net_base));


 if (pldat->num_used_tx_buffs >= (ENET_TX_DESC - 1))
  netif_stop_queue(ndev);

 spin_unlock_irq(&pldat->lock);

 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
