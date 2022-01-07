
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct pcan_usb_msg_context {int ptr; scalar_t__ end; TYPE_3__* netdev; int ts16; TYPE_1__* pdev; int rec_ts_idx; } ;
struct can_frame {int can_id; int can_dlc; int * data; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_5__ {int rx_bytes; int rx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;
struct TYPE_4__ {int time_ref; } ;


 int CAN_EFF_FLAG ;
 int CAN_RTR_FLAG ;
 int EINVAL ;
 int ENOMEM ;
 int PCAN_USB_STATUSLEN_DLC ;
 int PCAN_USB_STATUSLEN_EXT_ID ;
 int PCAN_USB_STATUSLEN_RTR ;
 struct sk_buff* alloc_can_skb (TYPE_3__*,struct can_frame**) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int get_can_dlc (int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int,int) ;
 int memset (int *,int,int) ;
 int netif_rx (struct sk_buff*) ;
 scalar_t__ pcan_usb_decode_ts (struct pcan_usb_msg_context*,int) ;
 int peak_usb_get_ts_time (int *,int ,int *) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static int pcan_usb_decode_data(struct pcan_usb_msg_context *mc, u8 status_len)
{
 u8 rec_len = status_len & PCAN_USB_STATUSLEN_DLC;
 struct sk_buff *skb;
 struct can_frame *cf;
 struct skb_shared_hwtstamps *hwts;

 skb = alloc_can_skb(mc->netdev, &cf);
 if (!skb)
  return -ENOMEM;

 if (status_len & PCAN_USB_STATUSLEN_EXT_ID) {
  __le32 tmp32;

  if ((mc->ptr + 4) > mc->end)
   goto decode_failed;

  memcpy(&tmp32, mc->ptr, 4);
  mc->ptr += 4;

  cf->can_id = (le32_to_cpu(tmp32) >> 3) | CAN_EFF_FLAG;
 } else {
  __le16 tmp16;

  if ((mc->ptr + 2) > mc->end)
   goto decode_failed;

  memcpy(&tmp16, mc->ptr, 2);
  mc->ptr += 2;

  cf->can_id = le16_to_cpu(tmp16) >> 5;
 }

 cf->can_dlc = get_can_dlc(rec_len);


 if (pcan_usb_decode_ts(mc, !mc->rec_ts_idx))
  goto decode_failed;


 mc->rec_ts_idx++;


 memset(cf->data, 0x0, sizeof(cf->data));
 if (status_len & PCAN_USB_STATUSLEN_RTR) {
  cf->can_id |= CAN_RTR_FLAG;
 } else {
  if ((mc->ptr + rec_len) > mc->end)
   goto decode_failed;

  memcpy(cf->data, mc->ptr, cf->can_dlc);
  mc->ptr += rec_len;
 }


 hwts = skb_hwtstamps(skb);
 peak_usb_get_ts_time(&mc->pdev->time_ref, mc->ts16, &hwts->hwtstamp);


 mc->netdev->stats.rx_packets++;
 mc->netdev->stats.rx_bytes += cf->can_dlc;

 netif_rx(skb);

 return 0;

decode_failed:
 dev_kfree_skb(skb);
 return -EINVAL;
}
