
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dev; } ;
struct urb {int actual_length; struct sk_buff* context; struct usb_device* dev; } ;
struct sk_buff {int* data; } ;
struct atusb {int hw; } ;


 struct atusb* SKB_ATUSB (struct sk_buff*) ;
 int atusb_tx_done (struct atusb*,int) ;
 int dev_dbg (int *,char*,...) ;
 int ieee802154_is_valid_psdu_len (int) ;
 int ieee802154_rx_irqsafe (int ,struct sk_buff*,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static void atusb_in_good(struct urb *urb)
{
 struct usb_device *usb_dev = urb->dev;
 struct sk_buff *skb = urb->context;
 struct atusb *atusb = SKB_ATUSB(skb);
 u8 len, lqi;

 if (!urb->actual_length) {
  dev_dbg(&usb_dev->dev, "atusb_in: zero-sized URB ?\n");
  return;
 }

 len = *skb->data;

 if (urb->actual_length == 1) {
  atusb_tx_done(atusb, len);
  return;
 }

 if (len + 1 > urb->actual_length - 1) {
  dev_dbg(&usb_dev->dev, "atusb_in: frame len %d+1 > URB %u-1\n",
   len, urb->actual_length);
  return;
 }

 if (!ieee802154_is_valid_psdu_len(len)) {
  dev_dbg(&usb_dev->dev, "atusb_in: frame corrupted\n");
  return;
 }

 lqi = skb->data[len + 1];
 dev_dbg(&usb_dev->dev, "atusb_in: rx len %d lqi 0x%02x\n", len, lqi);
 skb_pull(skb, 1);
 skb_trim(skb, len);
 ieee802154_rx_irqsafe(atusb->hw, skb, lqi);
 urb->context = ((void*)0);
}
