
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct hif_device_usb {int regout_submitted; int udev; } ;
struct cmd_buf {struct hif_device_usb* hif_dev; struct sk_buff* skb; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_REG_OUT_PIPE ;
 int hif_usb_regout_cb ;
 int kfree (struct cmd_buf*) ;
 struct cmd_buf* kzalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_int_urb (struct urb*,int ,int ,int ,int ,int ,struct cmd_buf*,int) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndintpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int hif_usb_send_regout(struct hif_device_usb *hif_dev,
          struct sk_buff *skb)
{
 struct urb *urb;
 struct cmd_buf *cmd;
 int ret = 0;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (urb == ((void*)0))
  return -ENOMEM;

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0)) {
  usb_free_urb(urb);
  return -ENOMEM;
 }

 cmd->skb = skb;
 cmd->hif_dev = hif_dev;

 usb_fill_int_urb(urb, hif_dev->udev,
    usb_sndintpipe(hif_dev->udev, USB_REG_OUT_PIPE),
    skb->data, skb->len,
    hif_usb_regout_cb, cmd, 1);

 usb_anchor_urb(urb, &hif_dev->regout_submitted);
 ret = usb_submit_urb(urb, GFP_KERNEL);
 if (ret) {
  usb_unanchor_urb(urb);
  kfree(cmd);
 }
 usb_free_urb(urb);

 return ret;
}
