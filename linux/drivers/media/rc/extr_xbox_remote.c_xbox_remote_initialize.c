
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbox_remote {int inbuf; int irq_urb; struct usb_device* udev; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device {int dummy; } ;


 int DATA_BUFSIZE ;
 int usb_fill_int_urb (int ,struct usb_device*,int,int ,int,int ,struct xbox_remote*,int ) ;
 int usb_maxpacket (struct usb_device*,int,int ) ;
 int usb_pipeout (int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int xbox_remote_irq_in ;

__attribute__((used)) static int xbox_remote_initialize(struct xbox_remote *xbox_remote,
      struct usb_endpoint_descriptor *endpoint_in)
{
 struct usb_device *udev = xbox_remote->udev;
 int pipe, maxp;


 pipe = usb_rcvintpipe(udev, endpoint_in->bEndpointAddress);
 maxp = usb_maxpacket(udev, pipe, usb_pipeout(pipe));
 maxp = (maxp > DATA_BUFSIZE) ? DATA_BUFSIZE : maxp;

 usb_fill_int_urb(xbox_remote->irq_urb, udev, pipe, xbox_remote->inbuf,
    maxp, xbox_remote_irq_in, xbox_remote,
    endpoint_in->bInterval);

 return 0;
}
