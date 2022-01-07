
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ pkt_type; int protocol; scalar_t__ len; } ;
struct brcmf_if {TYPE_2__* ndev; TYPE_4__* drvr; } ;
struct TYPE_8__ {TYPE_3__* settings; } ;
struct TYPE_7__ {int iapp; } ;
struct TYPE_5__ {int rx_packets; int rx_bytes; int multicast; } ;
struct TYPE_6__ {int flags; TYPE_1__ stats; } ;


 int DATA ;
 int IFF_UP ;
 scalar_t__ PACKET_MULTICAST ;
 int brcmf_dbg (int ,char*,int ) ;
 scalar_t__ brcmf_skb_is_iapp (struct sk_buff*) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 scalar_t__ in_interrupt () ;
 int netif_rx (struct sk_buff*) ;
 int netif_rx_ni (struct sk_buff*) ;
 int ntohs (int ) ;

void brcmf_netif_rx(struct brcmf_if *ifp, struct sk_buff *skb)
{




 if (!ifp->drvr->settings->iapp && brcmf_skb_is_iapp(skb)) {
  brcmu_pkt_buf_free_skb(skb);
  return;
 }

 if (skb->pkt_type == PACKET_MULTICAST)
  ifp->ndev->stats.multicast++;

 if (!(ifp->ndev->flags & IFF_UP)) {
  brcmu_pkt_buf_free_skb(skb);
  return;
 }

 ifp->ndev->stats.rx_bytes += skb->len;
 ifp->ndev->stats.rx_packets++;

 brcmf_dbg(DATA, "rx proto=0x%X\n", ntohs(skb->protocol));
 if (in_interrupt())
  netif_rx(skb);
 else




  netif_rx_ni(skb);
}
