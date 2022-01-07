
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; int * data; } ;
struct hif_device_usb {int rx_remain_len; int rx_transfer_len; int htc_handle; TYPE_1__* udev; int rx_lock; struct sk_buff* remain_skb; scalar_t__ rx_pad_len; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATH_USB_RX_STREAM_MODE_TAG ;
 int GFP_ATOMIC ;
 int MAX_PKT_NUM_IN_TRANSFER ;
 int MAX_RX_BUF_SIZE ;
 int RX_STAT_ADD (int ,int) ;
 int RX_STAT_INC (int ) ;
 int USB_WLAN_RX_PIPE ;
 struct sk_buff* __dev_alloc_skb (scalar_t__,int ) ;
 int ath9k_htc_rx_msg (int ,struct sk_buff*,int,int ) ;
 int dev_err (int *,char*) ;
 scalar_t__ get_unaligned_le16 (int *) ;
 int memcpy (int *,int *,scalar_t__) ;
 int skb_allocated ;
 int skb_completed ;
 int skb_completed_bytes ;
 int skb_dropped ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ath9k_hif_usb_rx_stream(struct hif_device_usb *hif_dev,
        struct sk_buff *skb)
{
 struct sk_buff *nskb, *skb_pool[MAX_PKT_NUM_IN_TRANSFER];
 int index = 0, i, len = skb->len;
 int rx_remain_len, rx_pkt_len;
 u16 pool_index = 0;
 u8 *ptr;

 spin_lock(&hif_dev->rx_lock);

 rx_remain_len = hif_dev->rx_remain_len;
 rx_pkt_len = hif_dev->rx_transfer_len;

 if (rx_remain_len != 0) {
  struct sk_buff *remain_skb = hif_dev->remain_skb;

  if (remain_skb) {
   ptr = (u8 *) remain_skb->data;

   index = rx_remain_len;
   rx_remain_len -= hif_dev->rx_pad_len;
   ptr += rx_pkt_len;

   memcpy(ptr, skb->data, rx_remain_len);

   rx_pkt_len += rx_remain_len;
   hif_dev->rx_remain_len = 0;
   skb_put(remain_skb, rx_pkt_len);

   skb_pool[pool_index++] = remain_skb;

  } else {
   index = rx_remain_len;
  }
 }

 spin_unlock(&hif_dev->rx_lock);

 while (index < len) {
  u16 pkt_len;
  u16 pkt_tag;
  u16 pad_len;
  int chk_idx;

  ptr = (u8 *) skb->data;

  pkt_len = get_unaligned_le16(ptr + index);
  pkt_tag = get_unaligned_le16(ptr + index + 2);

  if (pkt_tag != ATH_USB_RX_STREAM_MODE_TAG) {
   RX_STAT_INC(skb_dropped);
   return;
  }

  pad_len = 4 - (pkt_len & 0x3);
  if (pad_len == 4)
   pad_len = 0;

  chk_idx = index;
  index = index + 4 + pkt_len + pad_len;

  if (index > MAX_RX_BUF_SIZE) {
   spin_lock(&hif_dev->rx_lock);
   hif_dev->rx_remain_len = index - MAX_RX_BUF_SIZE;
   hif_dev->rx_transfer_len =
    MAX_RX_BUF_SIZE - chk_idx - 4;
   hif_dev->rx_pad_len = pad_len;

   nskb = __dev_alloc_skb(pkt_len + 32, GFP_ATOMIC);
   if (!nskb) {
    dev_err(&hif_dev->udev->dev,
     "ath9k_htc: RX memory allocation error\n");
    spin_unlock(&hif_dev->rx_lock);
    goto err;
   }
   skb_reserve(nskb, 32);
   RX_STAT_INC(skb_allocated);

   memcpy(nskb->data, &(skb->data[chk_idx+4]),
          hif_dev->rx_transfer_len);


   hif_dev->remain_skb = nskb;
   spin_unlock(&hif_dev->rx_lock);
  } else {
   nskb = __dev_alloc_skb(pkt_len + 32, GFP_ATOMIC);
   if (!nskb) {
    dev_err(&hif_dev->udev->dev,
     "ath9k_htc: RX memory allocation error\n");
    goto err;
   }
   skb_reserve(nskb, 32);
   RX_STAT_INC(skb_allocated);

   memcpy(nskb->data, &(skb->data[chk_idx+4]), pkt_len);
   skb_put(nskb, pkt_len);
   skb_pool[pool_index++] = nskb;
  }
 }

err:
 for (i = 0; i < pool_index; i++) {
  RX_STAT_ADD(skb_completed_bytes, skb_pool[i]->len);
  ath9k_htc_rx_msg(hif_dev->htc_handle, skb_pool[i],
     skb_pool[i]->len, USB_WLAN_RX_PIPE);
  RX_STAT_INC(skb_completed);
 }
}
