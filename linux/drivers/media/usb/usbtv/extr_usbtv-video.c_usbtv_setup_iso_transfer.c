
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbtv {int iso_size; int udev; } ;
struct urb {int interval; int number_of_packets; int transfer_buffer_length; TYPE_1__* iso_frame_desc; int complete; int transfer_buffer; int transfer_flags; int pipe; struct usbtv* context; int dev; } ;
struct TYPE_2__ {int offset; int length; } ;


 int GFP_KERNEL ;
 int URB_ISO_ASAP ;
 int USBTV_ISOC_PACKETS ;
 int USBTV_VIDEO_ENDP ;
 int kcalloc (int,int,int ) ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvisocpipe (int ,int ) ;
 int usbtv_iso_cb ;

__attribute__((used)) static struct urb *usbtv_setup_iso_transfer(struct usbtv *usbtv)
{
 struct urb *ip;
 int size = usbtv->iso_size;
 int i;

 ip = usb_alloc_urb(USBTV_ISOC_PACKETS, GFP_KERNEL);
 if (ip == ((void*)0))
  return ((void*)0);

 ip->dev = usbtv->udev;
 ip->context = usbtv;
 ip->pipe = usb_rcvisocpipe(usbtv->udev, USBTV_VIDEO_ENDP);
 ip->interval = 1;
 ip->transfer_flags = URB_ISO_ASAP;
 ip->transfer_buffer = kcalloc(USBTV_ISOC_PACKETS, size,
      GFP_KERNEL);
 if (!ip->transfer_buffer) {
  usb_free_urb(ip);
  return ((void*)0);
 }
 ip->complete = usbtv_iso_cb;
 ip->number_of_packets = USBTV_ISOC_PACKETS;
 ip->transfer_buffer_length = size * USBTV_ISOC_PACKETS;
 for (i = 0; i < USBTV_ISOC_PACKETS; i++) {
  ip->iso_frame_desc[i].offset = size * i;
  ip->iso_frame_desc[i].length = size;
 }

 return ip;
}
