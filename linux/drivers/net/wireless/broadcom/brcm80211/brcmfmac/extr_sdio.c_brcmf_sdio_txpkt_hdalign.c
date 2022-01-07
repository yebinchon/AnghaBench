
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef long u16 ;
struct sk_buff {scalar_t__ data; } ;
struct brcmf_sdio {unsigned long head_align; scalar_t__ tx_hdrlen; TYPE_2__* sdiodev; } ;
struct brcmf_bus_stats {int pktcow_failed; int pktcowed; } ;
struct TYPE_4__ {TYPE_1__* bus_if; } ;
struct TYPE_3__ {struct brcmf_bus_stats stats; } ;


 int ENOMEM ;
 int atomic_inc (int *) ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ skb_cow_head (struct sk_buff*,long) ;
 long skb_headroom (struct sk_buff*) ;
 int skb_push (struct sk_buff*,long) ;

__attribute__((used)) static int brcmf_sdio_txpkt_hdalign(struct brcmf_sdio *bus, struct sk_buff *pkt)
{
 struct brcmf_bus_stats *stats;
 u16 head_pad;
 u8 *dat_buf;

 dat_buf = (u8 *)(pkt->data);


 head_pad = ((unsigned long)dat_buf % bus->head_align);
 if (head_pad) {
  if (skb_headroom(pkt) < head_pad) {
   stats = &bus->sdiodev->bus_if->stats;
   atomic_inc(&stats->pktcowed);
   if (skb_cow_head(pkt, head_pad)) {
    atomic_inc(&stats->pktcow_failed);
    return -ENOMEM;
   }
   head_pad = 0;
  }
  skb_push(pkt, head_pad);
  dat_buf = (u8 *)(pkt->data);
 }
 memset(dat_buf, 0, head_pad + bus->tx_hdrlen);
 return head_pad;
}
