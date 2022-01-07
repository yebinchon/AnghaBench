
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct ati_remote {void* out_urb; void* irq_urb; void* outbuf; int outbuf_dma; void* inbuf; int inbuf_dma; } ;


 int DATA_BUFSIZE ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 void* usb_alloc_coherent (struct usb_device*,int ,int ,int *) ;
 void* usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int ati_remote_alloc_buffers(struct usb_device *udev,
        struct ati_remote *ati_remote)
{
 ati_remote->inbuf = usb_alloc_coherent(udev, DATA_BUFSIZE, GFP_ATOMIC,
            &ati_remote->inbuf_dma);
 if (!ati_remote->inbuf)
  return -1;

 ati_remote->outbuf = usb_alloc_coherent(udev, DATA_BUFSIZE, GFP_ATOMIC,
      &ati_remote->outbuf_dma);
 if (!ati_remote->outbuf)
  return -1;

 ati_remote->irq_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!ati_remote->irq_urb)
  return -1;

 ati_remote->out_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!ati_remote->out_urb)
  return -1;

 return 0;
}
