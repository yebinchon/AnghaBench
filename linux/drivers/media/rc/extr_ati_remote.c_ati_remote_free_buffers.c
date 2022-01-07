
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ati_remote {int outbuf_dma; int outbuf; int udev; int inbuf_dma; int inbuf; int out_urb; int irq_urb; } ;


 int DATA_BUFSIZE ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void ati_remote_free_buffers(struct ati_remote *ati_remote)
{
 usb_free_urb(ati_remote->irq_urb);
 usb_free_urb(ati_remote->out_urb);

 usb_free_coherent(ati_remote->udev, DATA_BUFSIZE,
  ati_remote->inbuf, ati_remote->inbuf_dma);

 usb_free_coherent(ati_remote->udev, DATA_BUFSIZE,
  ati_remote->outbuf, ati_remote->outbuf_dma);
}
