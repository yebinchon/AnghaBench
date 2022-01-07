
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transfer_flags; } ;
struct smsusb_urb_t {TYPE_1__ urb; TYPE_3__* cb; } ;
struct smsusb_device_t {int buffer_size; int in_ep; int udev; int coredev; } ;
struct TYPE_5__ {int p; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int URB_FREE_BUFFER ;
 int pr_err (char*) ;
 TYPE_3__* smscore_getbuffer (int ) ;
 int smsusb_onresponse ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct smsusb_urb_t*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int smsusb_submit_urb(struct smsusb_device_t *dev,
        struct smsusb_urb_t *surb)
{
 if (!surb->cb) {

  surb->cb = smscore_getbuffer(dev->coredev);
  if (!surb->cb) {
   pr_err("smscore_getbuffer(...) returned NULL\n");
   return -ENOMEM;
  }
 }

 usb_fill_bulk_urb(
  &surb->urb,
  dev->udev,
  usb_rcvbulkpipe(dev->udev, dev->in_ep),
  surb->cb->p,
  dev->buffer_size,
  smsusb_onresponse,
  surb
 );
 surb->urb.transfer_flags |= URB_FREE_BUFFER;

 return usb_submit_urb(&surb->urb, GFP_ATOMIC);
}
