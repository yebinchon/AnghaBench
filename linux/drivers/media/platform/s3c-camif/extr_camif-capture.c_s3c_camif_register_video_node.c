
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct video_device {int minor; int io_modes; int buf_struct_size; int device_caps; int entity; int name; TYPE_3__* ctrl_handler; int dev; int * lock; int timestamp_flags; struct camif_vp* drv_priv; int * mem_ops; int * ops; int type; int release; TYPE_2__* v4l2_dev; int * ioctl_ops; int * fops; } ;
struct vb2_queue {int minor; int io_modes; int buf_struct_size; int device_caps; int entity; int name; TYPE_3__* ctrl_handler; int dev; int * lock; int timestamp_flags; struct camif_vp* drv_priv; int * mem_ops; int * ops; int type; int release; TYPE_2__* v4l2_dev; int * ioctl_ops; int * fops; } ;
struct v4l2_ctrl {struct camif_vp* priv; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_10__ {int flags; } ;
struct camif_vp {scalar_t__ id; TYPE_3__ ctrl_handler; TYPE_6__ pad; TYPE_1__* camif; int active_buf_q; int pending_buf_q; scalar_t__ reqbufs_count; struct video_device vdev; struct video_device vb_queue; } ;
struct TYPE_8__ {int dev; } ;
struct camif_dev {TYPE_2__ v4l2_dev; int lock; struct camif_vp* vp; } ;
struct camif_buffer {int dummy; } ;
struct TYPE_7__ {int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_VFLIP ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 int media_entity_cleanup (int *) ;
 int media_entity_pads_init (int *,int,TYPE_6__*) ;
 int memset (struct video_device*,int ,int) ;
 int s3c_camif_fops ;
 int s3c_camif_ioctl_ops ;
 int s3c_camif_qops ;
 int s3c_camif_video_ctrl_ops ;
 int snprintf (int ,int,char*,char*) ;
 int v4l2_ctrl_handler_free (TYPE_3__*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 struct v4l2_ctrl* v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int ,int,int,int ) ;
 int v4l2_info (TYPE_2__*,char*,int ,int ) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct video_device*) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct camif_vp*) ;

int s3c_camif_register_video_node(struct camif_dev *camif, int idx)
{
 struct camif_vp *vp = &camif->vp[idx];
 struct vb2_queue *q = &vp->vb_queue;
 struct video_device *vfd = &vp->vdev;
 struct v4l2_ctrl *ctrl;
 int ret;

 memset(vfd, 0, sizeof(*vfd));
 snprintf(vfd->name, sizeof(vfd->name), "camif-%s",
   vp->id == 0 ? "codec" : "preview");

 vfd->fops = &s3c_camif_fops;
 vfd->ioctl_ops = &s3c_camif_ioctl_ops;
 vfd->v4l2_dev = &camif->v4l2_dev;
 vfd->minor = -1;
 vfd->release = video_device_release_empty;
 vfd->lock = &camif->lock;
 vp->reqbufs_count = 0;

 INIT_LIST_HEAD(&vp->pending_buf_q);
 INIT_LIST_HEAD(&vp->active_buf_q);

 memset(q, 0, sizeof(*q));
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 q->io_modes = VB2_MMAP | VB2_USERPTR;
 q->ops = &s3c_camif_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->buf_struct_size = sizeof(struct camif_buffer);
 q->drv_priv = vp;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->lock = &vp->camif->lock;
 q->dev = camif->v4l2_dev.dev;

 ret = vb2_queue_init(q);
 if (ret)
  goto err_vd_rel;

 vp->pad.flags = MEDIA_PAD_FL_SINK;
 ret = media_entity_pads_init(&vfd->entity, 1, &vp->pad);
 if (ret)
  goto err_vd_rel;

 video_set_drvdata(vfd, vp);

 v4l2_ctrl_handler_init(&vp->ctrl_handler, 1);
 ctrl = v4l2_ctrl_new_std(&vp->ctrl_handler, &s3c_camif_video_ctrl_ops,
     V4L2_CID_HFLIP, 0, 1, 1, 0);
 if (ctrl)
  ctrl->priv = vp;
 ctrl = v4l2_ctrl_new_std(&vp->ctrl_handler, &s3c_camif_video_ctrl_ops,
     V4L2_CID_VFLIP, 0, 1, 1, 0);
 if (ctrl)
  ctrl->priv = vp;

 ret = vp->ctrl_handler.error;
 if (ret < 0)
  goto err_me_cleanup;

 vfd->ctrl_handler = &vp->ctrl_handler;
 vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE;

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 if (ret)
  goto err_ctrlh_free;

 v4l2_info(&camif->v4l2_dev, "registered %s as /dev/%s\n",
    vfd->name, video_device_node_name(vfd));
 return 0;

err_ctrlh_free:
 v4l2_ctrl_handler_free(&vp->ctrl_handler);
err_me_cleanup:
 media_entity_cleanup(&vfd->entity);
err_vd_rel:
 video_device_release(vfd);
 return ret;
}
