
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wil_net_stats {int rx_dropped; int rx_replay; } ;
struct TYPE_6__ {scalar_t__ (* rx_crypto_check ) (struct wil6210_priv*,struct sk_buff*) ;int (* rx_error_check ) (struct wil6210_priv*,struct sk_buff*,struct wil_net_stats*) ;int (* get_netif_rx_params ) (struct sk_buff*,int*,int*) ;} ;
struct wil6210_priv {TYPE_3__ txrx_ops; TYPE_1__* sta; } ;
struct sk_buff {int len; } ;
struct TYPE_5__ {int rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_4__ {struct wil_net_stats stats; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 struct wil6210_priv* ndev_to_wil (struct net_device*) ;
 int skb_orphan (struct sk_buff*) ;
 int stub1 (struct sk_buff*,int*,int*) ;
 scalar_t__ stub2 (struct wil6210_priv*,struct sk_buff*) ;
 int stub3 (struct wil6210_priv*,struct sk_buff*,struct wil_net_stats*) ;
 scalar_t__ unlikely (int ) ;
 int wil_dbg_txrx (struct wil6210_priv*,char*,int ) ;
 int wil_netif_rx (struct sk_buff*,struct net_device*,int,struct wil_net_stats*,int) ;

void wil_netif_rx_any(struct sk_buff *skb, struct net_device *ndev)
{
 int cid, security;
 struct wil6210_priv *wil = ndev_to_wil(ndev);
 struct wil_net_stats *stats;

 wil->txrx_ops.get_netif_rx_params(skb, &cid, &security);

 stats = &wil->sta[cid].stats;

 skb_orphan(skb);

 if (security && (wil->txrx_ops.rx_crypto_check(wil, skb) != 0)) {
  wil_dbg_txrx(wil, "Rx drop %d bytes\n", skb->len);
  dev_kfree_skb(skb);
  ndev->stats.rx_dropped++;
  stats->rx_replay++;
  stats->rx_dropped++;
  return;
 }


 if (unlikely(wil->txrx_ops.rx_error_check(wil, skb, stats))) {
  dev_kfree_skb(skb);
  return;
 }

 wil_netif_rx(skb, ndev, cid, stats, 1);
}
