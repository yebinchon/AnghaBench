
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int function; } ;
struct video_device {int minor; int device_caps; int io_modes; int buf_struct_size; TYPE_7__ entity; int * ctrl_handler; int name; int * dev; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct fimc_ctx* drv_priv; int type; struct video_device* queue; int release; struct v4l2_device* v4l2_dev; int * ioctl_ops; int * fops; } ;
struct vb2_queue {int minor; int device_caps; int io_modes; int buf_struct_size; TYPE_7__ entity; int * ctrl_handler; int name; int * dev; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct fimc_ctx* drv_priv; int type; struct vb2_queue* queue; int release; struct v4l2_device* v4l2_dev; int * ioctl_ops; int * fops; } ;
struct v4l2_device {int dummy; } ;
struct TYPE_17__ {int flags; } ;
struct TYPE_14__ {int code; void* height; void* width; } ;
struct TYPE_10__ {struct video_device vdev; } ;
struct fimc_vid_cap {TYPE_8__ vd_pad; TYPE_5__ wb_fmt; TYPE_5__ ci_fmt; int active_buf_q; int pending_buf_q; struct fimc_ctx* ctx; scalar_t__ reqbufs_count; scalar_t__ active_buf_cnt; struct video_device vbq; TYPE_1__ ve; } ;
struct fimc_vid_buffer {int dummy; } ;
struct fimc_fmt {int mbus_code; } ;
struct fimc_dev {int id; TYPE_3__* pdev; int lock; struct fimc_vid_cap vid_cap; } ;
struct TYPE_15__ {int handler; } ;
struct TYPE_13__ {struct fimc_fmt* fmt; void* height; void* width; } ;
struct TYPE_11__ {struct fimc_fmt* fmt; } ;
struct fimc_ctx {TYPE_6__ ctrls; TYPE_4__ s_frame; TYPE_2__ d_frame; int state; int out_path; int in_path; struct fimc_dev* fimc_dev; } ;
struct TYPE_12__ {int dev; } ;


 int ENOMEM ;
 int FIMC_CTX_CAP ;
 void* FIMC_DEFAULT_HEIGHT ;
 void* FIMC_DEFAULT_WIDTH ;
 int FIMC_IO_CAMERA ;
 int FIMC_IO_DMA ;
 int FMT_FLAGS_CAM ;
 int FMT_FLAGS_WRITEBACK ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MEDIA_ENT_F_PROC_VIDEO_SCALER ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 int fimc_capture_fops ;
 int fimc_capture_ioctl_ops ;
 int fimc_capture_qops ;
 int fimc_ctrls_create (struct fimc_ctx*) ;
 int fimc_ctrls_delete (struct fimc_ctx*) ;
 void* fimc_find_format (int *,int *,int ,int ) ;
 int kfree (struct fimc_ctx*) ;
 struct fimc_ctx* kzalloc (int,int ) ;
 int media_entity_cleanup (TYPE_7__*) ;
 int media_entity_pads_init (TYPE_7__*,int,TYPE_8__*) ;
 int memset (struct video_device*,int ,int) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_info (struct v4l2_device*,char*,int ,int ) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct video_device*) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct fimc_dev*) ;

__attribute__((used)) static int fimc_register_capture_device(struct fimc_dev *fimc,
     struct v4l2_device *v4l2_dev)
{
 struct video_device *vfd = &fimc->vid_cap.ve.vdev;
 struct vb2_queue *q = &fimc->vid_cap.vbq;
 struct fimc_ctx *ctx;
 struct fimc_vid_cap *vid_cap;
 struct fimc_fmt *fmt;
 int ret = -ENOMEM;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->fimc_dev = fimc;
 ctx->in_path = FIMC_IO_CAMERA;
 ctx->out_path = FIMC_IO_DMA;
 ctx->state = FIMC_CTX_CAP;
 ctx->s_frame.fmt = fimc_find_format(((void*)0), ((void*)0), FMT_FLAGS_CAM, 0);
 ctx->d_frame.fmt = ctx->s_frame.fmt;

 memset(vfd, 0, sizeof(*vfd));
 snprintf(vfd->name, sizeof(vfd->name), "fimc.%d.capture", fimc->id);

 vfd->fops = &fimc_capture_fops;
 vfd->ioctl_ops = &fimc_capture_ioctl_ops;
 vfd->v4l2_dev = v4l2_dev;
 vfd->minor = -1;
 vfd->release = video_device_release_empty;
 vfd->queue = q;
 vfd->lock = &fimc->lock;
 vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE_MPLANE;

 video_set_drvdata(vfd, fimc);
 vid_cap = &fimc->vid_cap;
 vid_cap->active_buf_cnt = 0;
 vid_cap->reqbufs_count = 0;
 vid_cap->ctx = ctx;

 INIT_LIST_HEAD(&vid_cap->pending_buf_q);
 INIT_LIST_HEAD(&vid_cap->active_buf_q);

 memset(q, 0, sizeof(*q));
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
 q->io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
 q->drv_priv = ctx;
 q->ops = &fimc_capture_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->buf_struct_size = sizeof(struct fimc_vid_buffer);
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->lock = &fimc->lock;
 q->dev = &fimc->pdev->dev;

 ret = vb2_queue_init(q);
 if (ret)
  goto err_free_ctx;


 fmt = fimc_find_format(((void*)0), ((void*)0), FMT_FLAGS_CAM, 0);
 vid_cap->ci_fmt.width = FIMC_DEFAULT_WIDTH;
 vid_cap->ci_fmt.height = FIMC_DEFAULT_HEIGHT;
 vid_cap->ci_fmt.code = fmt->mbus_code;

 ctx->s_frame.width = FIMC_DEFAULT_WIDTH;
 ctx->s_frame.height = FIMC_DEFAULT_HEIGHT;
 ctx->s_frame.fmt = fmt;

 fmt = fimc_find_format(((void*)0), ((void*)0), FMT_FLAGS_WRITEBACK, 0);
 vid_cap->wb_fmt = vid_cap->ci_fmt;
 vid_cap->wb_fmt.code = fmt->mbus_code;

 vid_cap->vd_pad.flags = MEDIA_PAD_FL_SINK;
 vfd->entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
 ret = media_entity_pads_init(&vfd->entity, 1, &vid_cap->vd_pad);
 if (ret)
  goto err_free_ctx;

 ret = fimc_ctrls_create(ctx);
 if (ret)
  goto err_me_cleanup;

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 if (ret)
  goto err_ctrl_free;

 v4l2_info(v4l2_dev, "Registered %s as /dev/%s\n",
    vfd->name, video_device_node_name(vfd));

 vfd->ctrl_handler = &ctx->ctrls.handler;
 return 0;

err_ctrl_free:
 fimc_ctrls_delete(ctx);
err_me_cleanup:
 media_entity_cleanup(&vfd->entity);
err_free_ctx:
 kfree(ctx);
 return ret;
}
