
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct urb {int status; int actual_length; TYPE_2__* dev; int * transfer_buffer; struct catc* context; } ;
struct sk_buff {int protocol; } ;
struct catc {int flags; TYPE_3__* netdev; TYPE_2__* usbdev; int recq_sz; scalar_t__ is_f5u011; } ;
typedef int __le16 ;
struct TYPE_5__ {int rx_bytes; int rx_packets; int rx_errors; int rx_length_errors; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;
struct TYPE_6__ {int dev; } ;


 int GFP_ATOMIC ;
 int RX_RUNNING ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_dbg (int *,char*,int,int) ;
 int eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 int le16_to_cpup (int *) ;
 int netdev_dbg (TYPE_3__*,char*,...) ;
 int netif_rx (struct sk_buff*) ;
 int skb_copy_to_linear_data (struct sk_buff*,int *,int) ;
 int skb_put (struct sk_buff*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void catc_rx_done(struct urb *urb)
{
 struct catc *catc = urb->context;
 u8 *pkt_start = urb->transfer_buffer;
 struct sk_buff *skb;
 int pkt_len, pkt_offset = 0;
 int status = urb->status;

 if (!catc->is_f5u011) {
  clear_bit(RX_RUNNING, &catc->flags);
  pkt_offset = 2;
 }

 if (status) {
  dev_dbg(&urb->dev->dev, "rx_done, status %d, length %d\n",
   status, urb->actual_length);
  return;
 }

 do {
  if(!catc->is_f5u011) {
   pkt_len = le16_to_cpup((__le16*)pkt_start);
   if (pkt_len > urb->actual_length) {
    catc->netdev->stats.rx_length_errors++;
    catc->netdev->stats.rx_errors++;
    break;
   }
  } else {
   pkt_len = urb->actual_length;
  }

  if (!(skb = dev_alloc_skb(pkt_len)))
   return;

  skb_copy_to_linear_data(skb, pkt_start + pkt_offset, pkt_len);
  skb_put(skb, pkt_len);

  skb->protocol = eth_type_trans(skb, catc->netdev);
  netif_rx(skb);

  catc->netdev->stats.rx_packets++;
  catc->netdev->stats.rx_bytes += pkt_len;


  if (catc->is_f5u011)
   break;
  pkt_start += (((pkt_len + 1) >> 6) + 1) << 6;

 } while (pkt_start - (u8 *) urb->transfer_buffer < urb->actual_length);

 if (catc->is_f5u011) {
  if (atomic_read(&catc->recq_sz)) {
   int state;
   atomic_dec(&catc->recq_sz);
   netdev_dbg(catc->netdev, "getting extra packet\n");
   urb->dev = catc->usbdev;
   if ((state = usb_submit_urb(urb, GFP_ATOMIC)) < 0) {
    netdev_dbg(catc->netdev,
        "submit(rx_urb) status %d\n", state);
   }
  } else {
   clear_bit(RX_RUNNING, &catc->flags);
  }
 }
}
