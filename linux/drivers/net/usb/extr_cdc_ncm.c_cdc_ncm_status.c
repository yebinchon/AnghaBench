
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* udev; int flags; int net; } ;
struct usb_cdc_speed_change {int dummy; } ;
struct usb_cdc_notification {int bNotificationType; int wValue; } ;
struct urb {int actual_length; struct usb_cdc_notification* transfer_buffer; } ;
struct TYPE_2__ {int dev; } ;


 int EVENT_STS_SPLIT ;


 int cdc_ncm_speed_change (struct usbnet*,struct usb_cdc_speed_change*) ;
 int dev_dbg (int *,char*,int) ;
 int link ;
 int netif_info (struct usbnet*,int ,int ,char*,char*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int usbnet_link_change (struct usbnet*,int,int ) ;

__attribute__((used)) static void cdc_ncm_status(struct usbnet *dev, struct urb *urb)
{
 struct usb_cdc_notification *event;

 if (urb->actual_length < sizeof(*event))
  return;


 if (test_and_clear_bit(EVENT_STS_SPLIT, &dev->flags)) {
  cdc_ncm_speed_change(dev,
        (struct usb_cdc_speed_change *)urb->transfer_buffer);
  return;
 }

 event = urb->transfer_buffer;

 switch (event->bNotificationType) {
 case 129:





  netif_info(dev, link, dev->net,
      "network connection: %sconnected\n",
      !!event->wValue ? "" : "dis");
  usbnet_link_change(dev, !!event->wValue, 0);
  break;

 case 128:
  if (urb->actual_length < (sizeof(*event) +
     sizeof(struct usb_cdc_speed_change)))
   set_bit(EVENT_STS_SPLIT, &dev->flags);
  else
   cdc_ncm_speed_change(dev,
          (struct usb_cdc_speed_change *)&event[1]);
  break;

 default:
  dev_dbg(&dev->udev->dev,
   "NCM: unexpected notification 0x%02x!\n",
   event->bNotificationType);
  break;
 }
}
