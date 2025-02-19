
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; int transfer_dma; int transfer_buffer_length; } ;
struct cx231xx_dmaqueue {struct urb** p_left_data; } ;
struct TYPE_3__ {int nfields; int num_bufs; struct urb** transfer_buffer; struct urb** urb; } ;
struct TYPE_4__ {TYPE_1__ bulk_ctl; int end_point_addr; struct cx231xx_dmaqueue vidq; } ;
struct cx231xx {scalar_t__ mode_tv; TYPE_2__ video_mode; int udev; } ;


 int EPIPE ;
 int Raw_Video ;
 int TS1_serial_mode ;
 int cx231xx_capture_start (struct cx231xx*,int ,int ) ;
 int cx231xx_isocdbg (char*) ;
 int irqs_disabled () ;
 int kfree (struct urb**) ;
 int usb_free_coherent (int ,int ,struct urb*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_reset_endpoint (int ,int ) ;
 int usb_unlink_urb (struct urb*) ;

void cx231xx_uninit_bulk(struct cx231xx *dev)
{
 struct cx231xx_dmaqueue *dma_q = &dev->video_mode.vidq;
 struct urb *urb;
 int i;
 bool broken_pipe = 0;

 cx231xx_isocdbg("cx231xx: called cx231xx_uninit_bulk\n");

 dev->video_mode.bulk_ctl.nfields = -1;
 for (i = 0; i < dev->video_mode.bulk_ctl.num_bufs; i++) {
  urb = dev->video_mode.bulk_ctl.urb[i];
  if (urb) {
   if (!irqs_disabled())
    usb_kill_urb(urb);
   else
    usb_unlink_urb(urb);

   if (dev->video_mode.bulk_ctl.transfer_buffer[i]) {
    usb_free_coherent(dev->udev,
      urb->transfer_buffer_length,
      dev->video_mode.bulk_ctl.
      transfer_buffer[i],
      urb->transfer_dma);
   }
   if (urb->status == -EPIPE) {
    broken_pipe = 1;
   }
   usb_free_urb(urb);
   dev->video_mode.bulk_ctl.urb[i] = ((void*)0);
  }
  dev->video_mode.bulk_ctl.transfer_buffer[i] = ((void*)0);
 }

 if (broken_pipe) {
  cx231xx_isocdbg("Reset endpoint to recover broken pipe.");
  usb_reset_endpoint(dev->udev, dev->video_mode.end_point_addr);
 }
 kfree(dev->video_mode.bulk_ctl.urb);
 kfree(dev->video_mode.bulk_ctl.transfer_buffer);
 kfree(dma_q->p_left_data);

 dev->video_mode.bulk_ctl.urb = ((void*)0);
 dev->video_mode.bulk_ctl.transfer_buffer = ((void*)0);
 dev->video_mode.bulk_ctl.num_bufs = 0;
 dma_q->p_left_data = ((void*)0);

 if (dev->mode_tv == 0)
  cx231xx_capture_start(dev, 0, Raw_Video);
 else
  cx231xx_capture_start(dev, 0, TS1_serial_mode);


}
