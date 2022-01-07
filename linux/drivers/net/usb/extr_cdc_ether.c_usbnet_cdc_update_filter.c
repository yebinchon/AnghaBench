
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {int udev; struct net_device* net; int data; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct net_device {int flags; } ;
struct cdc_state {struct usb_interface* control; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int USB_CDC_PACKET_TYPE_ALL_MULTICAST ;
 int USB_CDC_PACKET_TYPE_BROADCAST ;
 int USB_CDC_PACKET_TYPE_DIRECTED ;
 int USB_CDC_PACKET_TYPE_PROMISCUOUS ;
 int USB_CDC_SET_ETHERNET_PACKET_FILTER ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int netdev_mc_empty (struct net_device*) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void usbnet_cdc_update_filter(struct usbnet *dev)
{
 struct cdc_state *info = (void *) &dev->data;
 struct usb_interface *intf = info->control;
 struct net_device *net = dev->net;

 u16 cdc_filter = USB_CDC_PACKET_TYPE_DIRECTED
   | USB_CDC_PACKET_TYPE_BROADCAST;





 if (net->flags & IFF_PROMISC)
  cdc_filter |= USB_CDC_PACKET_TYPE_PROMISCUOUS;
 if (!netdev_mc_empty(net) || (net->flags & IFF_ALLMULTI))
  cdc_filter |= USB_CDC_PACKET_TYPE_ALL_MULTICAST;

 usb_control_msg(dev->udev,
   usb_sndctrlpipe(dev->udev, 0),
   USB_CDC_SET_ETHERNET_PACKET_FILTER,
   USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   cdc_filter,
   intf->cur_altsetting->desc.bInterfaceNumber,
   ((void*)0),
   0,
   USB_CTRL_SET_TIMEOUT
  );
}
