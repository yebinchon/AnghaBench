
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {scalar_t__ len; int data; } ;
struct hif_device_usb {int mgmt_submitted; int udev; } ;
struct cmd_buf {struct hif_device_usb* hif_dev; struct sk_buff* skb; } ;
typedef int __le16 ;


 scalar_t__ ATH_USB_TX_STREAM_MODE_TAG ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int USB_WLAN_TX_PIPE ;
 void* cpu_to_le16 (scalar_t__) ;
 int hif_usb_mgmt_cb ;
 int kfree (struct cmd_buf*) ;
 struct cmd_buf* kzalloc (int,int ) ;
 int * skb_push (struct sk_buff*,int) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,scalar_t__,int ,struct cmd_buf*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int hif_usb_send_mgmt(struct hif_device_usb *hif_dev,
        struct sk_buff *skb)
{
 struct urb *urb;
 struct cmd_buf *cmd;
 int ret = 0;
 __le16 *hdr;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (urb == ((void*)0))
  return -ENOMEM;

 cmd = kzalloc(sizeof(*cmd), GFP_ATOMIC);
 if (cmd == ((void*)0)) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 cmd->skb = skb;
 cmd->hif_dev = hif_dev;

 hdr = skb_push(skb, 4);
 *hdr++ = cpu_to_le16(skb->len - 4);
 *hdr++ = cpu_to_le16(ATH_USB_TX_STREAM_MODE_TAG);

 usb_fill_bulk_urb(urb, hif_dev->udev,
    usb_sndbulkpipe(hif_dev->udev, USB_WLAN_TX_PIPE),
    skb->data, skb->len,
    hif_usb_mgmt_cb, cmd);

 usb_anchor_urb(urb, &hif_dev->mgmt_submitted);
 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret) {
  usb_unanchor_urb(urb);
  kfree(cmd);
 }
 usb_free_urb(urb);

 return ret;
}
