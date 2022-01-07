
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; void* wIndex; void* wValue; int bRequest; } ;
struct urb {struct usb_device* dev; void* setup_packet; int transfer_buffer; scalar_t__ transfer_buffer_length; int pipe; } ;
struct ctrl_queue {int dir; scalar_t__ len; scalar_t__ buf; scalar_t__ index; scalar_t__ value; int request; } ;
struct catc {int ctrl_tail; struct usb_device* usbdev; struct urb* ctrl_urb; int ctrl_buf; struct usb_ctrlrequest ctrl_dr; struct ctrl_queue* ctrl_queue; } ;


 int GFP_ATOMIC ;
 void* cpu_to_le16 (scalar_t__) ;
 int dev_err (int *,char*,int) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void catc_ctrl_run(struct catc *catc)
{
 struct ctrl_queue *q = catc->ctrl_queue + catc->ctrl_tail;
 struct usb_device *usbdev = catc->usbdev;
 struct urb *urb = catc->ctrl_urb;
 struct usb_ctrlrequest *dr = &catc->ctrl_dr;
 int status;

 dr->bRequest = q->request;
 dr->bRequestType = 0x40 | q->dir;
 dr->wValue = cpu_to_le16(q->value);
 dr->wIndex = cpu_to_le16(q->index);
 dr->wLength = cpu_to_le16(q->len);

        urb->pipe = q->dir ? usb_rcvctrlpipe(usbdev, 0) : usb_sndctrlpipe(usbdev, 0);
 urb->transfer_buffer_length = q->len;
 urb->transfer_buffer = catc->ctrl_buf;
 urb->setup_packet = (void *) dr;
 urb->dev = usbdev;

 if (!q->dir && q->buf && q->len)
  memcpy(catc->ctrl_buf, q->buf, q->len);

 if ((status = usb_submit_urb(catc->ctrl_urb, GFP_ATOMIC)))
  dev_err(&catc->usbdev->dev, "submit(ctrl_urb) status %d\n",
   status);
}
