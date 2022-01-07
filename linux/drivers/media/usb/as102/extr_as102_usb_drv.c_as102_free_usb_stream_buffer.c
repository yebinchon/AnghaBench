
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usb_dev; } ;
struct as102_dev_t {int dma_addr; int stream; TYPE_1__ bus_adap; int * stream_urb; } ;


 int AS102_USB_BUF_SIZE ;
 int MAX_STREAM_URB ;
 int usb_free_coherent (int ,int,int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void as102_free_usb_stream_buffer(struct as102_dev_t *dev)
{
 int i;

 for (i = 0; i < MAX_STREAM_URB; i++)
  usb_free_urb(dev->stream_urb[i]);

 usb_free_coherent(dev->bus_adap.usb_dev,
   MAX_STREAM_URB * AS102_USB_BUF_SIZE,
   dev->stream,
   dev->dma_addr);
}
