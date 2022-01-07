
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* rates; } ;
struct ieee80211_tx_info {TYPE_3__ status; int flags; } ;
struct b43legacy_wldev {TYPE_4__* wl; } ;
struct b43legacy_txstatus {scalar_t__ rts_count; int frame_count; scalar_t__ acked; int cookie; } ;
struct b43legacy_txhdr_fw3 {int dummy; } ;
struct b43legacy_pioqueue {int txtask; int txqueue; int tx_devq_used; int tx_devq_packets; } ;
struct b43legacy_pio_txpacket {TYPE_6__* skb; } ;
struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_8__ {scalar_t__ short_frame_max_tx_count; } ;
struct TYPE_12__ {TYPE_1__ conf; } ;
struct TYPE_11__ {TYPE_5__* hw; } ;
struct TYPE_9__ {int count; int idx; } ;


 int B43legacy_WARN_ON (int) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (TYPE_6__*) ;
 int IEEE80211_TX_STAT_ACK ;
 int free_txpacket (struct b43legacy_pio_txpacket*,int) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (TYPE_5__*,TYPE_6__*) ;
 int list_empty (int *) ;
 struct b43legacy_pioqueue* parse_cookie (struct b43legacy_wldev*,int ,struct b43legacy_pio_txpacket**) ;
 int tasklet_schedule (int *) ;

void b43legacy_pio_handle_txstatus(struct b43legacy_wldev *dev,
       const struct b43legacy_txstatus *status)
{
 struct b43legacy_pioqueue *queue;
 struct b43legacy_pio_txpacket *packet;
 struct ieee80211_tx_info *info;
 int retry_limit;

 queue = parse_cookie(dev, status->cookie, &packet);
 B43legacy_WARN_ON(!queue);

 if (!packet->skb)
  return;

 queue->tx_devq_packets--;
 queue->tx_devq_used -= (packet->skb->len +
    sizeof(struct b43legacy_txhdr_fw3));

 info = IEEE80211_SKB_CB(packet->skb);




 retry_limit = info->status.rates[0].count;
 ieee80211_tx_info_clear_status(info);

 if (status->acked)
  info->flags |= IEEE80211_TX_STAT_ACK;

 if (status->rts_count > dev->wl->hw->conf.short_frame_max_tx_count) {







  info->status.rates[0].count = 0;
  info->status.rates[1].count = status->frame_count;
 } else {
  if (status->frame_count > retry_limit) {
   info->status.rates[0].count = retry_limit;
   info->status.rates[1].count = status->frame_count -
     retry_limit;

  } else {
   info->status.rates[0].count = status->frame_count;
   info->status.rates[1].idx = -1;
  }
 }
 ieee80211_tx_status_irqsafe(dev->wl->hw, packet->skb);
 packet->skb = ((void*)0);

 free_txpacket(packet, 1);



 if (!list_empty(&queue->txqueue))
  tasklet_schedule(&queue->txtask);
}
