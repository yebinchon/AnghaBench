
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_device {int name; struct vb2_queue* queue; int * lock; int vfl_dir; struct v4l2_ctrl_handler* ctrl_handler; int * v4l2_dev; } ;
struct vb2_queue {int io_modes; int min_buffers_needed; int buf_struct_size; int * dev; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct cx25821_channel* drv_priv; int gfp_flags; int type; } ;
struct v4l2_ctrl_handler {int error; } ;
struct cx25821_dev {int tvnorm; char* name; size_t nr; int lock; int v4l2_dev; TYPE_3__* pci; TYPE_1__* vid_out_data; struct cx25821_channel* channels; int slock; } ;
struct TYPE_6__ {int active; } ;
struct cx25821_channel {int width; int height; scalar_t__ pixel_formats; struct vb2_queue vidq; TYPE_2__ dma_vidq; TYPE_4__* sram_channels; void* fmt; int field; TYPE_1__* out; struct v4l2_ctrl_handler hdl; struct video_device vdev; } ;
struct cx25821_buffer {int dummy; } ;
struct TYPE_8__ {int int_stat; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {struct cx25821_channel* chan; } ;


 int GFP_DMA32 ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_VID_CAP_CHANNEL_NUM ;
 int PCI_INT_MSK ;
 scalar_t__ PIXEL_FRMT_411 ;
 int SRAM_CH08 ;
 int SRAM_CH09 ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_Y41P ;
 int V4L2_PIX_FMT_YUYV ;
 int V4L2_STD_625_50 ;
 int V4L2_STD_NTSC_M ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VB2_WRITE ;
 int VFL_DIR_TX ;
 int VFL_TYPE_GRABBER ;
 int cx25821_ctrl_ops ;
 void* cx25821_format_by_fourcc (int ) ;
 TYPE_4__* cx25821_sram_channels ;
 struct video_device cx25821_video_device ;
 struct video_device cx25821_video_out_device ;
 int cx25821_video_qops ;
 int cx25821_video_unregister (struct cx25821_dev*,int ) ;
 int cx_set (int ,int) ;
 int cx_write (int ,int) ;
 int snprintf (int ,int,char*,char*,int) ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 int vb2_dma_sg_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int * video_nr ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct cx25821_channel*) ;

int cx25821_video_register(struct cx25821_dev *dev)
{
 int err;
 int i;


 dev->tvnorm = V4L2_STD_NTSC_M;

 spin_lock_init(&dev->slock);

 for (i = 0; i < MAX_VID_CAP_CHANNEL_NUM - 1; ++i) {
  struct cx25821_channel *chan = &dev->channels[i];
  struct video_device *vdev = &chan->vdev;
  struct v4l2_ctrl_handler *hdl = &chan->hdl;
  struct vb2_queue *q;
  bool is_output = i > SRAM_CH08;

  if (i == SRAM_CH08)
   continue;

  if (!is_output) {
   v4l2_ctrl_handler_init(hdl, 4);
   v4l2_ctrl_new_std(hdl, &cx25821_ctrl_ops,
     V4L2_CID_BRIGHTNESS, 0, 10000, 1, 6200);
   v4l2_ctrl_new_std(hdl, &cx25821_ctrl_ops,
     V4L2_CID_CONTRAST, 0, 10000, 1, 5000);
   v4l2_ctrl_new_std(hdl, &cx25821_ctrl_ops,
     V4L2_CID_SATURATION, 0, 10000, 1, 5000);
   v4l2_ctrl_new_std(hdl, &cx25821_ctrl_ops,
     V4L2_CID_HUE, 0, 10000, 1, 5000);
   if (hdl->error) {
    err = hdl->error;
    goto fail_unreg;
   }
   err = v4l2_ctrl_handler_setup(hdl);
   if (err)
    goto fail_unreg;
  } else {
   chan->out = &dev->vid_out_data[i - SRAM_CH09];
   chan->out->chan = chan;
  }

  chan->sram_channels = &cx25821_sram_channels[i];
  chan->width = 720;
  chan->field = V4L2_FIELD_INTERLACED;
  if (dev->tvnorm & V4L2_STD_625_50)
   chan->height = 576;
  else
   chan->height = 480;

  if (chan->pixel_formats == PIXEL_FRMT_411)
   chan->fmt = cx25821_format_by_fourcc(V4L2_PIX_FMT_Y41P);
  else
   chan->fmt = cx25821_format_by_fourcc(V4L2_PIX_FMT_YUYV);

  cx_write(chan->sram_channels->int_stat, 0xffffffff);

  INIT_LIST_HEAD(&chan->dma_vidq.active);

  q = &chan->vidq;

  q->type = is_output ? V4L2_BUF_TYPE_VIDEO_OUTPUT :
          V4L2_BUF_TYPE_VIDEO_CAPTURE;
  q->io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
  q->io_modes |= is_output ? VB2_WRITE : VB2_READ;
  q->gfp_flags = GFP_DMA32;
  q->min_buffers_needed = 2;
  q->drv_priv = chan;
  q->buf_struct_size = sizeof(struct cx25821_buffer);
  q->ops = &cx25821_video_qops;
  q->mem_ops = &vb2_dma_sg_memops;
  q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
  q->lock = &dev->lock;
  q->dev = &dev->pci->dev;

  if (!is_output) {
   err = vb2_queue_init(q);
   if (err < 0)
    goto fail_unreg;
  }


  *vdev = is_output ? cx25821_video_out_device : cx25821_video_device;
  vdev->v4l2_dev = &dev->v4l2_dev;
  if (!is_output)
   vdev->ctrl_handler = hdl;
  else
   vdev->vfl_dir = VFL_DIR_TX;
  vdev->lock = &dev->lock;
  vdev->queue = q;
  snprintf(vdev->name, sizeof(vdev->name), "%s #%d", dev->name, i);
  video_set_drvdata(vdev, chan);

  err = video_register_device(vdev, VFL_TYPE_GRABBER,
         video_nr[dev->nr]);

  if (err < 0)
   goto fail_unreg;
 }


 cx_set(PCI_INT_MSK, 0xff);

 return 0;

fail_unreg:
 while (i >= 0)
  cx25821_video_unregister(dev, i--);
 return err;
}
