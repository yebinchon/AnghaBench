
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct urb {int * transfer_buffer; int status; } ;
struct dvb_usb_device {int udev; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct TYPE_6__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int EINPROGRESS ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int RC_MSG_SIZE_V1_20 ;
 int dib0700_rc_urb_completion ;
 int err (char*) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_bulk (struct usb_endpoint_descriptor const*) ;
 scalar_t__ usb_endpoint_xfer_int (struct usb_endpoint_descriptor const*) ;
 int usb_fill_bulk_urb (struct urb*,int ,unsigned int,int *,int ,int ,struct dvb_usb_device*) ;
 int usb_fill_int_urb (struct urb*,int ,unsigned int,int *,int ,int ,struct dvb_usb_device*,int) ;
 int usb_free_urb (struct urb*) ;
 unsigned int usb_rcvbulkpipe (int ,int) ;
 unsigned int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

int dib0700_rc_setup(struct dvb_usb_device *d, struct usb_interface *intf)
{
 struct dib0700_state *st = d->priv;
 struct urb *purb;
 const struct usb_endpoint_descriptor *e;
 int ret, rc_ep = 1;
 unsigned int pipe = 0;


 if (st->fw_version < 0x10200 || !intf)
  return 0;



 if (intf->altsetting[0].desc.bNumEndpoints < rc_ep + 1)
  return -ENODEV;

 purb = usb_alloc_urb(0, GFP_KERNEL);
 if (purb == ((void*)0))
  return -ENOMEM;

 purb->transfer_buffer = kzalloc(RC_MSG_SIZE_V1_20, GFP_KERNEL);
 if (purb->transfer_buffer == ((void*)0)) {
  err("rc kzalloc failed");
  usb_free_urb(purb);
  return -ENOMEM;
 }

 purb->status = -EINPROGRESS;





 e = &intf->altsetting[0].endpoint[rc_ep].desc;
 if (usb_endpoint_dir_in(e)) {
  if (usb_endpoint_xfer_bulk(e)) {
   pipe = usb_rcvbulkpipe(d->udev, rc_ep);
   usb_fill_bulk_urb(purb, d->udev, pipe,
       purb->transfer_buffer,
       RC_MSG_SIZE_V1_20,
       dib0700_rc_urb_completion, d);

  } else if (usb_endpoint_xfer_int(e)) {
   pipe = usb_rcvintpipe(d->udev, rc_ep);
   usb_fill_int_urb(purb, d->udev, pipe,
       purb->transfer_buffer,
       RC_MSG_SIZE_V1_20,
       dib0700_rc_urb_completion, d, 1);
  }
 }

 if (!pipe) {
  err("There's no endpoint for remote controller");
  kfree(purb->transfer_buffer);
  usb_free_urb(purb);
  return 0;
 }

 ret = usb_submit_urb(purb, GFP_ATOMIC);
 if (ret) {
  err("rc submit urb failed");
  kfree(purb->transfer_buffer);
  usb_free_urb(purb);
 }

 return ret;
}
