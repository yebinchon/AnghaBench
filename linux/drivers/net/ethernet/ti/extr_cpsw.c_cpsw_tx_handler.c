
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_frame {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct cpsw_meta_xdp {int ch; struct net_device* ndev; } ;
struct TYPE_4__ {int cpts; } ;


 int CPSW_XMETA_OFFSET ;
 struct xdp_frame* cpsw_handle_to_xdpf (void*) ;
 scalar_t__ cpsw_is_xdpf_handle (void*) ;
 int cpts_tx_timestamp (int ,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 TYPE_2__* ndev_to_cpsw (struct net_device*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;
 int netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;
 int xdp_return_frame (struct xdp_frame*) ;

void cpsw_tx_handler(void *token, int len, int status)
{
 struct cpsw_meta_xdp *xmeta;
 struct xdp_frame *xdpf;
 struct net_device *ndev;
 struct netdev_queue *txq;
 struct sk_buff *skb;
 int ch;

 if (cpsw_is_xdpf_handle(token)) {
  xdpf = cpsw_handle_to_xdpf(token);
  xmeta = (void *)xdpf + CPSW_XMETA_OFFSET;
  ndev = xmeta->ndev;
  ch = xmeta->ch;
  xdp_return_frame(xdpf);
 } else {
  skb = token;
  ndev = skb->dev;
  ch = skb_get_queue_mapping(skb);
  cpts_tx_timestamp(ndev_to_cpsw(ndev)->cpts, skb);
  dev_kfree_skb_any(skb);
 }




 txq = netdev_get_tx_queue(ndev, ch);
 if (unlikely(netif_tx_queue_stopped(txq)))
  netif_tx_wake_queue(txq);

 ndev->stats.tx_packets++;
 ndev->stats.tx_bytes += len;
}
