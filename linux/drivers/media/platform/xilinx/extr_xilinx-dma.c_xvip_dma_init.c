
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct xvip_dma_buffer {int dummy; } ;
struct TYPE_17__ {int device_caps; int * lock; int * ioctl_ops; int release; int vfl_dir; int vfl_type; int name; TYPE_7__* queue; int * v4l2_dev; int * fops; int entity; } ;
struct TYPE_18__ {int type; int io_modes; int buf_struct_size; int timestamp_flags; TYPE_10__* dev; int * mem_ops; int * ops; struct xvip_dma* drv_priv; int * lock; } ;
struct TYPE_19__ {int flags; } ;
struct TYPE_15__ {int width; int height; int bytesperline; int sizeimage; int field; int colorspace; int pixelformat; } ;
struct TYPE_14__ {int lock; } ;
struct xvip_dma {unsigned int port; int align; struct xvip_composite_device* xdev; TYPE_5__ video; TYPE_9__* dma; TYPE_7__ queue; int lock; TYPE_8__ pad; TYPE_3__ format; TYPE_4__* fmtinfo; int queued_lock; int queued_bufs; TYPE_2__ pipe; } ;
struct xvip_composite_device {TYPE_10__* dev; int v4l2_dev; } ;
typedef int name ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_20__ {TYPE_1__* device; } ;
struct TYPE_16__ {int bpp; int fourcc; } ;
struct TYPE_13__ {int copy_align; } ;
struct TYPE_12__ {int of_node; } ;


 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_EOF ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int VFL_DIR_RX ;
 int VFL_DIR_TX ;
 int VFL_TYPE_GRABBER ;
 int XVIP_DMA_DEF_FORMAT ;
 int XVIP_DMA_DEF_HEIGHT ;
 int XVIP_DMA_DEF_WIDTH ;
 int dev_err (TYPE_10__*,char*) ;
 TYPE_9__* dma_request_slave_channel (TYPE_10__*,char*) ;
 int media_entity_pads_init (int *,int,TYPE_8__*) ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,unsigned int,...) ;
 int spin_lock_init (int *) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (TYPE_7__*) ;
 int video_device_release_empty ;
 int video_register_device (TYPE_5__*,int ,int) ;
 int video_set_drvdata (TYPE_5__*,struct xvip_dma*) ;
 int xvip_dma_cleanup (struct xvip_dma*) ;
 int xvip_dma_fops ;
 int xvip_dma_ioctl_ops ;
 int xvip_dma_queue_qops ;
 TYPE_4__* xvip_get_format_by_fourcc (int ) ;

int xvip_dma_init(struct xvip_composite_device *xdev, struct xvip_dma *dma,
    enum v4l2_buf_type type, unsigned int port)
{
 char name[16];
 int ret;

 dma->xdev = xdev;
 dma->port = port;
 mutex_init(&dma->lock);
 mutex_init(&dma->pipe.lock);
 INIT_LIST_HEAD(&dma->queued_bufs);
 spin_lock_init(&dma->queued_lock);

 dma->fmtinfo = xvip_get_format_by_fourcc(XVIP_DMA_DEF_FORMAT);
 dma->format.pixelformat = dma->fmtinfo->fourcc;
 dma->format.colorspace = V4L2_COLORSPACE_SRGB;
 dma->format.field = V4L2_FIELD_NONE;
 dma->format.width = XVIP_DMA_DEF_WIDTH;
 dma->format.height = XVIP_DMA_DEF_HEIGHT;
 dma->format.bytesperline = dma->format.width * dma->fmtinfo->bpp;
 dma->format.sizeimage = dma->format.bytesperline * dma->format.height;


 dma->pad.flags = type == V4L2_BUF_TYPE_VIDEO_CAPTURE
         ? MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;

 ret = media_entity_pads_init(&dma->video.entity, 1, &dma->pad);
 if (ret < 0)
  goto error;


 dma->video.fops = &xvip_dma_fops;
 dma->video.v4l2_dev = &xdev->v4l2_dev;
 dma->video.queue = &dma->queue;
 snprintf(dma->video.name, sizeof(dma->video.name), "%pOFn %s %u",
   xdev->dev->of_node,
   type == V4L2_BUF_TYPE_VIDEO_CAPTURE ? "output" : "input",
   port);
 dma->video.vfl_type = VFL_TYPE_GRABBER;
 dma->video.vfl_dir = type == V4L2_BUF_TYPE_VIDEO_CAPTURE
      ? VFL_DIR_RX : VFL_DIR_TX;
 dma->video.release = video_device_release_empty;
 dma->video.ioctl_ops = &xvip_dma_ioctl_ops;
 dma->video.lock = &dma->lock;
 dma->video.device_caps = V4L2_CAP_STREAMING;
 if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  dma->video.device_caps |= V4L2_CAP_VIDEO_CAPTURE;
 else
  dma->video.device_caps |= V4L2_CAP_VIDEO_OUTPUT;

 video_set_drvdata(&dma->video, dma);
 dma->queue.type = type;
 dma->queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
 dma->queue.lock = &dma->lock;
 dma->queue.drv_priv = dma;
 dma->queue.buf_struct_size = sizeof(struct xvip_dma_buffer);
 dma->queue.ops = &xvip_dma_queue_qops;
 dma->queue.mem_ops = &vb2_dma_contig_memops;
 dma->queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC
       | V4L2_BUF_FLAG_TSTAMP_SRC_EOF;
 dma->queue.dev = dma->xdev->dev;
 ret = vb2_queue_init(&dma->queue);
 if (ret < 0) {
  dev_err(dma->xdev->dev, "failed to initialize VB2 queue\n");
  goto error;
 }


 snprintf(name, sizeof(name), "port%u", port);
 dma->dma = dma_request_slave_channel(dma->xdev->dev, name);
 if (dma->dma == ((void*)0)) {
  dev_err(dma->xdev->dev, "no VDMA channel found\n");
  ret = -ENODEV;
  goto error;
 }

 dma->align = 1 << dma->dma->device->copy_align;

 ret = video_register_device(&dma->video, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  dev_err(dma->xdev->dev, "failed to register video device\n");
  goto error;
 }

 return 0;

error:
 xvip_dma_cleanup(dma);
 return ret;
}
