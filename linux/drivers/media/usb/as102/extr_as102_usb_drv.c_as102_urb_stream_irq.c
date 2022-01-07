
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer; int actual_length; struct as102_dev_t* context; } ;
struct as102_dev_t {scalar_t__ streaming; int dvb_dmx; } ;


 int AS102_USB_BUF_SIZE ;
 int as102_submit_urb_stream (struct as102_dev_t*,struct urb*) ;
 int dvb_dmx_swfilter (int *,int ,int ) ;
 int memset (int ,int ,int ) ;

void as102_urb_stream_irq(struct urb *urb)
{
 struct as102_dev_t *as102_dev = urb->context;

 if (urb->actual_length > 0) {
  dvb_dmx_swfilter(&as102_dev->dvb_dmx,
     urb->transfer_buffer,
     urb->actual_length);
 } else {
  if (urb->actual_length == 0)
   memset(urb->transfer_buffer, 0, AS102_USB_BUF_SIZE);
 }


 if (as102_dev->streaming)
  as102_submit_urb_stream(as102_dev, urb);
}
