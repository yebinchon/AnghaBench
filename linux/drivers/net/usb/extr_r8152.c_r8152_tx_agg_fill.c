
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int usb_complete_t ;
typedef int u8 ;
typedef scalar_t__ u32 ;
struct tx_desc {int dummy; } ;
struct tx_agg {int urb; int * head; scalar_t__ skb_num; scalar_t__ skb_len; } ;
struct sk_buff_head {int lock; } ;
struct sk_buff {int len; } ;
struct r8152 {scalar_t__ tx_qlen; int intf; int udev; TYPE_2__* netdev; struct sk_buff_head tx_queue; int flags; } ;
struct net_device_stats {int tx_dropped; } ;
struct TYPE_7__ {struct net_device_stats stats; } ;
struct TYPE_6__ {scalar_t__ gso_segs; } ;


 int DELL_TB_RX_AGG_BUG ;
 int ETH_ZLEN ;
 int GFP_ATOMIC ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head (struct sk_buff_head*,struct sk_buff*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int agg_buf_sz ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ netif_queue_stopped (TYPE_2__*) ;
 int netif_tx_lock (TYPE_2__*) ;
 int netif_tx_unlock (TYPE_2__*) ;
 int netif_wake_queue (TYPE_2__*) ;
 int r8152_csum_workaround (struct r8152*,struct sk_buff*,struct sk_buff_head*) ;
 scalar_t__ r8152_tx_csum (struct r8152*,struct tx_desc*,struct sk_buff*,int,scalar_t__) ;
 int rtl_tx_vlan_tag (struct tx_desc*,struct sk_buff*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,int *,unsigned int) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;
 int skb_queue_splice (struct sk_buff_head*,struct sk_buff_head*) ;
 int skb_queue_splice_init (struct sk_buff_head*,struct sk_buff_head*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int * tx_agg_align (int *) ;
 int usb_autopm_get_interface_async (int ) ;
 int usb_autopm_put_interface_async (int ) ;
 int usb_fill_bulk_urb (int ,int ,int ,int *,int,int ,struct tx_agg*) ;
 int usb_sndbulkpipe (int ,int) ;
 int usb_submit_urb (int ,int ) ;
 scalar_t__ write_bulk_callback ;

__attribute__((used)) static int r8152_tx_agg_fill(struct r8152 *tp, struct tx_agg *agg)
{
 struct sk_buff_head skb_head, *tx_queue = &tp->tx_queue;
 int remain, ret;
 u8 *tx_data;

 __skb_queue_head_init(&skb_head);
 spin_lock(&tx_queue->lock);
 skb_queue_splice_init(tx_queue, &skb_head);
 spin_unlock(&tx_queue->lock);

 tx_data = agg->head;
 agg->skb_num = 0;
 agg->skb_len = 0;
 remain = agg_buf_sz;

 while (remain >= ETH_ZLEN + sizeof(struct tx_desc)) {
  struct tx_desc *tx_desc;
  struct sk_buff *skb;
  unsigned int len;
  u32 offset;

  skb = __skb_dequeue(&skb_head);
  if (!skb)
   break;

  len = skb->len + sizeof(*tx_desc);

  if (len > remain) {
   __skb_queue_head(&skb_head, skb);
   break;
  }

  tx_data = tx_agg_align(tx_data);
  tx_desc = (struct tx_desc *)tx_data;

  offset = (u32)skb_transport_offset(skb);

  if (r8152_tx_csum(tp, tx_desc, skb, skb->len, offset)) {
   r8152_csum_workaround(tp, skb, &skb_head);
   continue;
  }

  rtl_tx_vlan_tag(tx_desc, skb);

  tx_data += sizeof(*tx_desc);

  len = skb->len;
  if (skb_copy_bits(skb, 0, tx_data, len) < 0) {
   struct net_device_stats *stats = &tp->netdev->stats;

   stats->tx_dropped++;
   dev_kfree_skb_any(skb);
   tx_data -= sizeof(*tx_desc);
   continue;
  }

  tx_data += len;
  agg->skb_len += len;
  agg->skb_num += skb_shinfo(skb)->gso_segs ?: 1;

  dev_kfree_skb_any(skb);

  remain = agg_buf_sz - (int)(tx_agg_align(tx_data) - agg->head);

  if (test_bit(DELL_TB_RX_AGG_BUG, &tp->flags))
   break;
 }

 if (!skb_queue_empty(&skb_head)) {
  spin_lock(&tx_queue->lock);
  skb_queue_splice(&skb_head, tx_queue);
  spin_unlock(&tx_queue->lock);
 }

 netif_tx_lock(tp->netdev);

 if (netif_queue_stopped(tp->netdev) &&
     skb_queue_len(&tp->tx_queue) < tp->tx_qlen)
  netif_wake_queue(tp->netdev);

 netif_tx_unlock(tp->netdev);

 ret = usb_autopm_get_interface_async(tp->intf);
 if (ret < 0)
  goto out_tx_fill;

 usb_fill_bulk_urb(agg->urb, tp->udev, usb_sndbulkpipe(tp->udev, 2),
     agg->head, (int)(tx_data - (u8 *)agg->head),
     (usb_complete_t)write_bulk_callback, agg);

 ret = usb_submit_urb(agg->urb, GFP_ATOMIC);
 if (ret < 0)
  usb_autopm_put_interface_async(tp->intf);

out_tx_fill:
 return ret;
}
