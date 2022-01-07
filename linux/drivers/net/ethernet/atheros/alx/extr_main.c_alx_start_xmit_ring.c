
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct alx_txd {int dummy; } ;
struct alx_tx_queue {size_t write_idx; int count; int p_reg; struct alx_txd* tpd; int netdev; } ;
struct alx_priv {int hw; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int alx_get_tx_queue (struct alx_tx_queue*) ;
 scalar_t__ alx_map_tx_skb (struct alx_tx_queue*,struct sk_buff*) ;
 int alx_tpd_avail (struct alx_tx_queue*) ;
 int alx_tpd_req (struct sk_buff*) ;
 int alx_tso (struct sk_buff*,struct alx_txd*) ;
 scalar_t__ alx_tx_csum (struct sk_buff*,struct alx_txd*) ;
 int alx_write_mem16 (int *,int ,size_t) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memset (struct alx_txd*,int ,int) ;
 struct alx_priv* netdev_priv (int ) ;
 int netdev_tx_sent_queue (int ,int ) ;
 int netif_tx_stop_queue (int ) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t alx_start_xmit_ring(struct sk_buff *skb,
           struct alx_tx_queue *txq)
{
 struct alx_priv *alx;
 struct alx_txd *first;
 int tso;

 alx = netdev_priv(txq->netdev);

 if (alx_tpd_avail(txq) < alx_tpd_req(skb)) {
  netif_tx_stop_queue(alx_get_tx_queue(txq));
  goto drop;
 }

 first = &txq->tpd[txq->write_idx];
 memset(first, 0, sizeof(*first));

 tso = alx_tso(skb, first);
 if (tso < 0)
  goto drop;
 else if (!tso && alx_tx_csum(skb, first))
  goto drop;

 if (alx_map_tx_skb(txq, skb) < 0)
  goto drop;

 netdev_tx_sent_queue(alx_get_tx_queue(txq), skb->len);


 wmb();
 alx_write_mem16(&alx->hw, txq->p_reg, txq->write_idx);

 if (alx_tpd_avail(txq) < txq->count / 8)
  netif_tx_stop_queue(alx_get_tx_queue(txq));

 return NETDEV_TX_OK;

drop:
 dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
