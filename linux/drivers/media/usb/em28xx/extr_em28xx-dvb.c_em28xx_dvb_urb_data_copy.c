
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {scalar_t__ status; int number_of_packets; TYPE_2__* iso_frame_desc; scalar_t__ transfer_buffer; int actual_length; int pipe; } ;
struct em28xx {TYPE_1__* dvb; scalar_t__ disconnected; } ;
struct TYPE_4__ {scalar_t__ status; int actual_length; scalar_t__ offset; } ;
struct TYPE_3__ {int demux; } ;


 scalar_t__ EPROTO ;
 int dvb_dmx_swfilter (int *,scalar_t__,int ) ;
 int print_err_status (struct em28xx*,int,scalar_t__) ;
 int usb_pipebulk (int ) ;

__attribute__((used)) static inline int em28xx_dvb_urb_data_copy(struct em28xx *dev, struct urb *urb)
{
 int xfer_bulk, num_packets, i;

 if (!dev)
  return 0;

 if (dev->disconnected)
  return 0;

 if (urb->status < 0)
  print_err_status(dev, -1, urb->status);

 xfer_bulk = usb_pipebulk(urb->pipe);

 if (xfer_bulk)
  num_packets = 1;
 else
  num_packets = urb->number_of_packets;

 for (i = 0; i < num_packets; i++) {
  if (xfer_bulk) {
   if (urb->status < 0) {
    print_err_status(dev, i, urb->status);
    if (urb->status != -EPROTO)
     continue;
   }
   if (!urb->actual_length)
    continue;
   dvb_dmx_swfilter(&dev->dvb->demux, urb->transfer_buffer,
      urb->actual_length);
  } else {
   if (urb->iso_frame_desc[i].status < 0) {
    print_err_status(dev, i,
       urb->iso_frame_desc[i].status);
    if (urb->iso_frame_desc[i].status != -EPROTO)
     continue;
   }
   if (!urb->iso_frame_desc[i].actual_length)
    continue;
   dvb_dmx_swfilter(&dev->dvb->demux,
      urb->transfer_buffer +
      urb->iso_frame_desc[i].offset,
      urb->iso_frame_desc[i].actual_length);
  }
 }

 return 0;
}
