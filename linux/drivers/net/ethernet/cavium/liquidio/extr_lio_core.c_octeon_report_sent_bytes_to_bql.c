
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int dev; } ;
struct octnet_buf_free_info {struct sk_buff* skb; } ;
struct octeon_soft_command {struct sk_buff* callback_arg; } ;
struct netdev_queue {int dummy; } ;






 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 int netdev_tx_sent_queue (struct netdev_queue*,int ) ;
 int netif_xmit_stopped (struct netdev_queue*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

int octeon_report_sent_bytes_to_bql(void *buf, int reqtype)
{
 struct octnet_buf_free_info *finfo;
 struct sk_buff *skb;
 struct octeon_soft_command *sc;
 struct netdev_queue *txq;

 switch (reqtype) {
 case 131:
 case 130:
  finfo = buf;
  skb = finfo->skb;
  break;

 case 128:
 case 129:
  sc = buf;
  skb = sc->callback_arg;
  break;

 default:
  return 0;
 }

 txq = netdev_get_tx_queue(skb->dev, skb_get_queue_mapping(skb));
 netdev_tx_sent_queue(txq, skb->len);

 return netif_xmit_stopped(txq);
}
