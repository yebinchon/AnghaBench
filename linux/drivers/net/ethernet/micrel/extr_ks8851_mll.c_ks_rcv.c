
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct type_frame_head {int sts; int len; } ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct TYPE_2__ {int rx_dropped; int rx_packets; int rx_bytes; int rx_length_errors; int rx_frame_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ks_net {int frame_cnt; int rc_rxqcr; struct type_frame_head* frame_head_info; } ;


 int KS_RXFCTR ;
 int KS_RXFHBCR ;
 int KS_RXFHSR ;
 int KS_RXQCR ;
 int RXFSHR_RXFV ;
 int RXQCR_RRXEF ;
 int RX_BUF_SIZE ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_read_qmu (struct ks_net*,int *,int) ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;
 scalar_t__ likely (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ks_rcv(struct ks_net *ks, struct net_device *netdev)
{
 u32 i;
 struct type_frame_head *frame_hdr = ks->frame_head_info;
 struct sk_buff *skb;

 ks->frame_cnt = ks_rdreg16(ks, KS_RXFCTR) >> 8;


 for (i = 0; i < ks->frame_cnt; i++) {

  frame_hdr->sts = ks_rdreg16(ks, KS_RXFHSR);

  frame_hdr->len = ks_rdreg16(ks, KS_RXFHBCR);
  frame_hdr++;
 }

 frame_hdr = ks->frame_head_info;
 while (ks->frame_cnt--) {
  if (unlikely(!(frame_hdr->sts & RXFSHR_RXFV) ||
        frame_hdr->len >= RX_BUF_SIZE ||
        frame_hdr->len <= 0)) {


   ks_wrreg16(ks, KS_RXQCR, (ks->rc_rxqcr | RXQCR_RRXEF));
   netdev->stats.rx_dropped++;
   if (!(frame_hdr->sts & RXFSHR_RXFV))
    netdev->stats.rx_frame_errors++;
   else
    netdev->stats.rx_length_errors++;
   frame_hdr++;
   continue;
  }

  skb = netdev_alloc_skb(netdev, frame_hdr->len + 16);
  if (likely(skb)) {
   skb_reserve(skb, 2);

   ks_read_qmu(ks, (u16 *)skb->data, frame_hdr->len);
   skb_put(skb, frame_hdr->len - 4);
   skb->protocol = eth_type_trans(skb, netdev);
   netif_rx(skb);

   netdev->stats.rx_bytes += frame_hdr->len - 4;
   netdev->stats.rx_packets++;
  } else {
   ks_wrreg16(ks, KS_RXQCR, (ks->rc_rxqcr | RXQCR_RRXEF));
   netdev->stats.rx_dropped++;
  }
  frame_hdr++;
 }
}
