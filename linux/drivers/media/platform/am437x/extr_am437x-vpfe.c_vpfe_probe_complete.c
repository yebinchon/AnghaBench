
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int ctrl_handler; } ;
struct video_device {int device_caps; int * lock; struct vb2_queue* queue; int vfl_dir; TYPE_4__* v4l2_dev; int * ioctl_ops; int * fops; int release; int name; } ;
struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int dev; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct vpfe_device* drv_priv; void* type; } ;
struct TYPE_5__ {void* type; } ;
struct vpfe_device {TYPE_4__ v4l2_dev; struct video_device video_dev; int lock; int dma_queue; int pdev; struct vb2_queue buffer_queue; TYPE_3__** sd; TYPE_2__* cfg; int * current_subdev; TYPE_1__ fmt; int dma_queue_lock; } ;
struct vpfe_cap_buffer {int dummy; } ;
struct TYPE_7__ {int ctrl_handler; } ;
struct TYPE_6__ {int * sub_devs; } ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VFL_DIR_RX ;
 int VFL_TYPE_GRABBER ;
 int VPFE_MODULE_NAME ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,int ,int) ;
 int v4l2_device_unregister (TYPE_4__*) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct vpfe_device*) ;
 int vpfe_err (struct vpfe_device*,char*) ;
 int vpfe_fops ;
 int vpfe_ioctl_ops ;
 int vpfe_set_input (struct vpfe_device*,int ) ;
 int vpfe_video_qops ;

__attribute__((used)) static int vpfe_probe_complete(struct vpfe_device *vpfe)
{
 struct video_device *vdev;
 struct vb2_queue *q;
 int err;

 spin_lock_init(&vpfe->dma_queue_lock);
 mutex_init(&vpfe->lock);

 vpfe->fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;


 vpfe->current_subdev = &vpfe->cfg->sub_devs[0];
 vpfe->v4l2_dev.ctrl_handler = vpfe->sd[0]->ctrl_handler;

 err = vpfe_set_input(vpfe, 0);
 if (err)
  goto probe_out;


 q = &vpfe->buffer_queue;
 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 q->io_modes = VB2_MMAP | VB2_DMABUF | VB2_READ;
 q->drv_priv = vpfe;
 q->ops = &vpfe_video_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->buf_struct_size = sizeof(struct vpfe_cap_buffer);
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->lock = &vpfe->lock;
 q->min_buffers_needed = 1;
 q->dev = vpfe->pdev;

 err = vb2_queue_init(q);
 if (err) {
  vpfe_err(vpfe, "vb2_queue_init() failed\n");
  goto probe_out;
 }

 INIT_LIST_HEAD(&vpfe->dma_queue);

 vdev = &vpfe->video_dev;
 strscpy(vdev->name, VPFE_MODULE_NAME, sizeof(vdev->name));
 vdev->release = video_device_release_empty;
 vdev->fops = &vpfe_fops;
 vdev->ioctl_ops = &vpfe_ioctl_ops;
 vdev->v4l2_dev = &vpfe->v4l2_dev;
 vdev->vfl_dir = VFL_DIR_RX;
 vdev->queue = q;
 vdev->lock = &vpfe->lock;
 vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
       V4L2_CAP_READWRITE;
 video_set_drvdata(vdev, vpfe);
 err = video_register_device(&vpfe->video_dev, VFL_TYPE_GRABBER, -1);
 if (err) {
  vpfe_err(vpfe,
   "Unable to register video device.\n");
  goto probe_out;
 }

 return 0;

probe_out:
 v4l2_device_unregister(&vpfe->v4l2_dev);
 return err;
}
