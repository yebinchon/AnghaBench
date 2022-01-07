
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int dev; int protocol; scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ fecn; scalar_t__ active; } ;
struct pvc_device {int frad; TYPE_1__ state; int dlci; } ;
struct TYPE_4__ {int tx_dropped; int tx_compressed; int tx_packets; int tx_bytes; } ;
struct net_device {scalar_t__ type; TYPE_2__ stats; struct pvc_device* ml_priv; } ;
typedef int netdev_tx_t ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_P_802_3 ;
 int ETH_ZLEN ;
 int GFP_ATOMIC ;
 int NETDEV_TX_OK ;
 int cpu_to_be16 (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int fr_hard_header (struct sk_buff**,int ) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t pvc_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct pvc_device *pvc = dev->ml_priv;

 if (pvc->state.active) {
  if (dev->type == ARPHRD_ETHER) {
   int pad = ETH_ZLEN - skb->len;
   if (pad > 0) {
    int len = skb->len;
    if (skb_tailroom(skb) < pad)
     if (pskb_expand_head(skb, 0, pad,
            GFP_ATOMIC)) {
      dev->stats.tx_dropped++;
      dev_kfree_skb(skb);
      return NETDEV_TX_OK;
     }
    skb_put(skb, pad);
    memset(skb->data + len, 0, pad);
   }
   skb->protocol = cpu_to_be16(ETH_P_802_3);
  }
  if (!fr_hard_header(&skb, pvc->dlci)) {
   dev->stats.tx_bytes += skb->len;
   dev->stats.tx_packets++;
   if (pvc->state.fecn)
    dev->stats.tx_compressed++;
   skb->dev = pvc->frad;
   dev_queue_xmit(skb);
   return NETDEV_TX_OK;
  }
 }

 dev->stats.tx_dropped++;
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
