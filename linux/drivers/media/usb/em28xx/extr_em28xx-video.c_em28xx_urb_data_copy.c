
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; int number_of_packets; unsigned int actual_length; unsigned char* transfer_buffer; TYPE_1__* iso_frame_desc; int pipe; } ;
struct em28xx {unsigned int max_pkt_size; scalar_t__ is_em25xx; scalar_t__ disconnected; } ;
struct TYPE_2__ {scalar_t__ status; unsigned int actual_length; int offset; } ;


 scalar_t__ EPROTO ;
 int em28xx_isocdbg (char*) ;
 int print_err_status (struct em28xx*,int,scalar_t__) ;
 int process_frame_data_em25xx (struct em28xx*,unsigned char*,unsigned int) ;
 int process_frame_data_em28xx (struct em28xx*,unsigned char*,unsigned int) ;
 int usb_pipebulk (int ) ;

__attribute__((used)) static inline int em28xx_urb_data_copy(struct em28xx *dev, struct urb *urb)
{
 int xfer_bulk, num_packets, i;
 unsigned char *usb_data_pkt;
 unsigned int usb_data_len;

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
   usb_data_len = urb->actual_length;

   usb_data_pkt = urb->transfer_buffer;
  } else {
   if (urb->iso_frame_desc[i].status < 0) {
    print_err_status(dev, i,
       urb->iso_frame_desc[i].status);
    if (urb->iso_frame_desc[i].status != -EPROTO)
     continue;
   }

   usb_data_len = urb->iso_frame_desc[i].actual_length;
   if (usb_data_len > dev->max_pkt_size) {
    em28xx_isocdbg("packet bigger than packet size");
    continue;
   }

   usb_data_pkt = urb->transfer_buffer +
           urb->iso_frame_desc[i].offset;
  }

  if (usb_data_len == 0) {


   continue;
  }

  if (dev->is_em25xx)
   process_frame_data_em25xx(dev,
        usb_data_pkt, usb_data_len);
  else
   process_frame_data_em28xx(dev,
        usb_data_pkt, usb_data_len);
 }
 return 1;
}
