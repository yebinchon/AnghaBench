
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int protocol; } ;
struct TYPE_4__ {int ifidx; int request_id; } ;
struct msgbuf_rx_complete {TYPE_2__ msg; int flags; int data_len; int data_offset; } ;
struct brcmf_pub {struct brcmf_if* mon_if; TYPE_1__* bus_if; } ;
struct brcmf_msgbuf {int rx_dataoffset; struct brcmf_pub* drvr; int rx_pktids; } ;
struct brcmf_if {int ndev; } ;
struct TYPE_3__ {int dev; } ;


 int BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_11 ;
 int BRCMF_MSGBUF_PKT_FLAGS_FRAME_MASK ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 struct brcmf_if* brcmf_get_ifp (struct brcmf_pub*,int ) ;
 struct sk_buff* brcmf_msgbuf_get_pktid (int ,int ,int ) ;
 int brcmf_msgbuf_update_rxbufpost_count (struct brcmf_msgbuf*,int) ;
 int brcmf_netif_mon_rx (struct brcmf_if*,struct sk_buff*) ;
 int brcmf_netif_rx (struct brcmf_if*,struct sk_buff*) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static void
brcmf_msgbuf_process_rx_complete(struct brcmf_msgbuf *msgbuf, void *buf)
{
 struct brcmf_pub *drvr = msgbuf->drvr;
 struct msgbuf_rx_complete *rx_complete;
 struct sk_buff *skb;
 u16 data_offset;
 u16 buflen;
 u16 flags;
 u32 idx;
 struct brcmf_if *ifp;

 brcmf_msgbuf_update_rxbufpost_count(msgbuf, 1);

 rx_complete = (struct msgbuf_rx_complete *)buf;
 data_offset = le16_to_cpu(rx_complete->data_offset);
 buflen = le16_to_cpu(rx_complete->data_len);
 idx = le32_to_cpu(rx_complete->msg.request_id);
 flags = le16_to_cpu(rx_complete->flags);

 skb = brcmf_msgbuf_get_pktid(msgbuf->drvr->bus_if->dev,
         msgbuf->rx_pktids, idx);
 if (!skb)
  return;

 if (data_offset)
  skb_pull(skb, data_offset);
 else if (msgbuf->rx_dataoffset)
  skb_pull(skb, msgbuf->rx_dataoffset);

 skb_trim(skb, buflen);

 if ((flags & BRCMF_MSGBUF_PKT_FLAGS_FRAME_MASK) ==
     BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_11) {
  ifp = msgbuf->drvr->mon_if;

  if (!ifp) {
   bphy_err(drvr, "Received unexpected monitor pkt\n");
   brcmu_pkt_buf_free_skb(skb);
   return;
  }

  brcmf_netif_mon_rx(ifp, skb);
  return;
 }

 ifp = brcmf_get_ifp(msgbuf->drvr, rx_complete->msg.ifidx);
 if (!ifp || !ifp->ndev) {
  bphy_err(drvr, "Received pkt for invalid ifidx %d\n",
    rx_complete->msg.ifidx);
  brcmu_pkt_buf_free_skb(skb);
  return;
 }

 skb->protocol = eth_type_trans(skb, ifp->ndev);
 brcmf_netif_rx(ifp, skb);
}
