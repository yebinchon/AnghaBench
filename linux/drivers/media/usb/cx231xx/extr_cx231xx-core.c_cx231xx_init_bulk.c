
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int pipe; int transfer_dma; int transfer_flags; } ;
struct cx231xx_dmaqueue {int current_field; int lines_per_field; int bytes_left_in_line; int* ps_head; int wq; scalar_t__* partial_buf; scalar_t__ mpeg_buffer_completed; scalar_t__ left_data_count; scalar_t__ mpeg_buffer_done; scalar_t__ lines_completed; scalar_t__ field1_done; scalar_t__ last_sav; scalar_t__ is_partial_line; scalar_t__ pos; } ;
struct TYPE_3__ {int (* bulk_copy ) (struct cx231xx*,struct urb*) ;int num_bufs; int max_pkt_size; struct urb** urb; int * transfer_buffer; int * buf; } ;
struct TYPE_4__ {int end_point_addr; TYPE_1__ bulk_ctl; struct cx231xx_dmaqueue vidq; } ;
struct cx231xx {int video_input; int height; int width; int mode_tv; int dev; TYPE_2__ video_mode; int udev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int Raw_Video ;
 int TS1_serial_mode ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int cx231xx_bulk_irq_callback ;
 int cx231xx_capture_start (struct cx231xx*,int,int ) ;
 int cx231xx_coredbg (char*,int) ;
 int cx231xx_uninit_bulk (struct cx231xx*) ;
 int dev_err (int ,char*,...) ;
 scalar_t__ in_interrupt () ;
 int init_waitqueue_head (int *) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct urb**) ;
 int memset (int ,int ,int) ;
 int usb_alloc_coherent (int ,int,int ,int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_clear_halt (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int,int ,int,int ,struct cx231xx_dmaqueue*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int video_mux (struct cx231xx*,int) ;

int cx231xx_init_bulk(struct cx231xx *dev, int max_packets,
        int num_bufs, int max_pkt_size,
        int (*bulk_copy) (struct cx231xx *dev, struct urb *urb))
{
 struct cx231xx_dmaqueue *dma_q = &dev->video_mode.vidq;
 int i;
 int sb_size, pipe;
 struct urb *urb;
 int rc;

 dev->video_input = dev->video_input > 2 ? 2 : dev->video_input;

 cx231xx_coredbg("Setting Video mux to %d\n", dev->video_input);

 video_mux(dev, dev->video_input);


 cx231xx_uninit_bulk(dev);

 dev->video_mode.bulk_ctl.bulk_copy = bulk_copy;
 dev->video_mode.bulk_ctl.num_bufs = num_bufs;
 dma_q->pos = 0;
 dma_q->is_partial_line = 0;
 dma_q->last_sav = 0;
 dma_q->current_field = -1;
 dma_q->field1_done = 0;
 dma_q->lines_per_field = dev->height / 2;
 dma_q->bytes_left_in_line = dev->width << 1;
 dma_q->lines_completed = 0;
 dma_q->mpeg_buffer_done = 0;
 dma_q->left_data_count = 0;
 dma_q->mpeg_buffer_completed = 0;
 dma_q->ps_head[0] = 0x00;
 dma_q->ps_head[1] = 0x00;
 dma_q->ps_head[2] = 0x01;
 dma_q->ps_head[3] = 0xBA;
 for (i = 0; i < 8; i++)
  dma_q->partial_buf[i] = 0;

 dev->video_mode.bulk_ctl.urb =
     kcalloc(num_bufs, sizeof(void *), GFP_KERNEL);
 if (!dev->video_mode.bulk_ctl.urb) {
  dev_err(dev->dev,
   "cannot alloc memory for usb buffers\n");
  return -ENOMEM;
 }

 dev->video_mode.bulk_ctl.transfer_buffer =
     kcalloc(num_bufs, sizeof(void *), GFP_KERNEL);
 if (!dev->video_mode.bulk_ctl.transfer_buffer) {
  dev_err(dev->dev,
   "cannot allocate memory for usbtransfer\n");
  kfree(dev->video_mode.bulk_ctl.urb);
  return -ENOMEM;
 }

 dev->video_mode.bulk_ctl.max_pkt_size = max_pkt_size;
 dev->video_mode.bulk_ctl.buf = ((void*)0);

 sb_size = max_packets * dev->video_mode.bulk_ctl.max_pkt_size;

 if (dev->mode_tv == 1)
  dev->video_mode.end_point_addr = 0x81;
 else
  dev->video_mode.end_point_addr = 0x84;



 for (i = 0; i < dev->video_mode.bulk_ctl.num_bufs; i++) {
  urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!urb) {
   cx231xx_uninit_bulk(dev);
   return -ENOMEM;
  }
  dev->video_mode.bulk_ctl.urb[i] = urb;
  urb->transfer_flags = URB_NO_TRANSFER_DMA_MAP;

  dev->video_mode.bulk_ctl.transfer_buffer[i] =
      usb_alloc_coherent(dev->udev, sb_size, GFP_KERNEL,
         &urb->transfer_dma);
  if (!dev->video_mode.bulk_ctl.transfer_buffer[i]) {
   dev_err(dev->dev,
    "unable to allocate %i bytes for transfer buffer %i%s\n",
    sb_size, i,
    in_interrupt() ? " while in int" : "");
   cx231xx_uninit_bulk(dev);
   return -ENOMEM;
  }
  memset(dev->video_mode.bulk_ctl.transfer_buffer[i], 0, sb_size);

  pipe = usb_rcvbulkpipe(dev->udev,
     dev->video_mode.end_point_addr);
  usb_fill_bulk_urb(urb, dev->udev, pipe,
      dev->video_mode.bulk_ctl.transfer_buffer[i],
      sb_size, cx231xx_bulk_irq_callback, dma_q);
 }


 rc = usb_clear_halt(dev->udev, dev->video_mode.bulk_ctl.urb[0]->pipe);
 if (rc < 0) {
  dev_err(dev->dev,
   "failed to clear USB bulk endpoint stall/halt condition (error=%i)\n",
   rc);
  cx231xx_uninit_bulk(dev);
  return rc;
 }

 init_waitqueue_head(&dma_q->wq);


 for (i = 0; i < dev->video_mode.bulk_ctl.num_bufs; i++) {
  rc = usb_submit_urb(dev->video_mode.bulk_ctl.urb[i],
        GFP_ATOMIC);
  if (rc) {
   dev_err(dev->dev,
    "submit of urb %i failed (error=%i)\n", i, rc);
   cx231xx_uninit_bulk(dev);
   return rc;
  }
 }

 if (dev->mode_tv == 0)
  cx231xx_capture_start(dev, 1, Raw_Video);
 else
  cx231xx_capture_start(dev, 1, TS1_serial_mode);

 return 0;
}
