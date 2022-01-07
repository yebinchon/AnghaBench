
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
struct msgbuf_rx_event {TYPE_2__ msg; int event_data_len; } ;
struct brcmf_pub {TYPE_1__* bus_if; } ;
struct brcmf_msgbuf {struct brcmf_pub* drvr; scalar_t__ rx_dataoffset; int rx_pktids; scalar_t__ cur_eventbuf; } ;
struct brcmf_if {int drvr; int ndev; } ;
struct TYPE_3__ {int dev; } ;


 int bphy_err (struct brcmf_pub*,char*,int ) ;
 int brcmf_fweh_process_skb (int ,struct sk_buff*,int ) ;
 struct brcmf_if* brcmf_get_ifp (struct brcmf_pub*,int ) ;
 struct sk_buff* brcmf_msgbuf_get_pktid (int ,int ,int ) ;
 int brcmf_msgbuf_rxbuf_event_post (struct brcmf_msgbuf*) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void brcmf_msgbuf_process_event(struct brcmf_msgbuf *msgbuf, void *buf)
{
 struct brcmf_pub *drvr = msgbuf->drvr;
 struct msgbuf_rx_event *event;
 u32 idx;
 u16 buflen;
 struct sk_buff *skb;
 struct brcmf_if *ifp;

 event = (struct msgbuf_rx_event *)buf;
 idx = le32_to_cpu(event->msg.request_id);
 buflen = le16_to_cpu(event->event_data_len);

 if (msgbuf->cur_eventbuf)
  msgbuf->cur_eventbuf--;
 brcmf_msgbuf_rxbuf_event_post(msgbuf);

 skb = brcmf_msgbuf_get_pktid(msgbuf->drvr->bus_if->dev,
         msgbuf->rx_pktids, idx);
 if (!skb)
  return;

 if (msgbuf->rx_dataoffset)
  skb_pull(skb, msgbuf->rx_dataoffset);

 skb_trim(skb, buflen);

 ifp = brcmf_get_ifp(msgbuf->drvr, event->msg.ifidx);
 if (!ifp || !ifp->ndev) {
  bphy_err(drvr, "Received pkt for invalid ifidx %d\n",
    event->msg.ifidx);
  goto exit;
 }

 skb->protocol = eth_type_trans(skb, ifp->ndev);

 brcmf_fweh_process_skb(ifp->drvr, skb, 0);

exit:
 brcmu_pkt_buf_free_skb(skb);
}
