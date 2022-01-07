
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int hard_mtu; int rx_urb_size; TYPE_2__* net; int * status; int udev; int out; int in; } ;
struct usb_interface {TYPE_1__* cur_altsetting; } ;
struct TYPE_6__ {scalar_t__ bInterfaceClass; } ;
struct TYPE_5__ {int dev_addr; int hard_header_len; } ;
struct TYPE_4__ {TYPE_3__ desc; } ;


 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ KALMIA_HEADER_LENGTH ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int USB_ENDPOINT_NUMBER_MASK ;
 int kalmia_init_and_get_ethernet_addr (struct usbnet*,int *) ;
 int memcpy (int ,int *,int) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int
kalmia_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int status;
 u8 ethernet_addr[ETH_ALEN];


 if (intf->cur_altsetting->desc.bInterfaceClass != USB_CLASS_VENDOR_SPEC)
  return -EINVAL;

 dev->in = usb_rcvbulkpipe(dev->udev, 0x81 & USB_ENDPOINT_NUMBER_MASK);
 dev->out = usb_sndbulkpipe(dev->udev, 0x02 & USB_ENDPOINT_NUMBER_MASK);
 dev->status = ((void*)0);

 dev->net->hard_header_len += KALMIA_HEADER_LENGTH;
 dev->hard_mtu = 1400;
 dev->rx_urb_size = dev->hard_mtu * 10;

 status = kalmia_init_and_get_ethernet_addr(dev, ethernet_addr);
 if (status)
  return status;

 memcpy(dev->net->dev_addr, ethernet_addr, ETH_ALEN);

 return status;
}
