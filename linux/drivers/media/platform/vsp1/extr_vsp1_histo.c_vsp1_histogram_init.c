
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct vsp1_histogram_buffer {int dummy; } ;
struct TYPE_9__ {int device_caps; TYPE_5__* queue; int * ioctl_ops; int release; int vfl_type; int name; int * fops; int * v4l2_dev; int entity; int vfl_dir; } ;
struct TYPE_10__ {int io_modes; int buf_struct_size; int dev; int timestamp_flags; int * mem_ops; int * ops; struct vsp1_histogram* drv_priv; int * lock; int type; } ;
struct TYPE_7__ {char* name; } ;
struct TYPE_8__ {int type; TYPE_1__ subdev; struct vsp1_entity_operations const* ops; } ;
struct TYPE_11__ {int flags; } ;
struct vsp1_histogram {unsigned int const* formats; unsigned int num_formats; size_t data_size; TYPE_3__ video; TYPE_5__ queue; int lock; TYPE_2__ entity; TYPE_6__ pad; int wait_queue; int irqqueue; int irqlock; int meta_format; } ;
struct vsp1_entity_operations {int dummy; } ;
struct vsp1_device {int dev; int v4l2_dev; } ;
typedef enum vsp1_entity_type { ____Placeholder_vsp1_entity_type } vsp1_entity_type ;


 int INIT_LIST_HEAD (int *) ;
 int MEDIA_ENT_F_PROC_VIDEO_STATISTICS ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_BUF_FLAG_TIMESTAMP_COPY ;
 int V4L2_BUF_TYPE_META_CAPTURE ;
 int V4L2_CAP_META_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int VFL_DIR_RX ;
 int VFL_TYPE_GRABBER ;
 int dev_err (int ,char*) ;
 int histo_ops ;
 int histo_v4l2_fops ;
 int histo_v4l2_ioctl_ops ;
 int histo_video_queue_qops ;
 int init_waitqueue_head (int *) ;
 int media_entity_pads_init (int *,int,TYPE_6__*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int vb2_queue_init (TYPE_5__*) ;
 int vb2_vmalloc_memops ;
 int video_device_release_empty ;
 int video_register_device (TYPE_3__*,int ,int) ;
 int video_set_drvdata (TYPE_3__*,struct vsp1_histogram*) ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_2__*,char const*,int,int *,int ) ;
 int vsp1_histogram_cleanup (struct vsp1_histogram*) ;

int vsp1_histogram_init(struct vsp1_device *vsp1, struct vsp1_histogram *histo,
   enum vsp1_entity_type type, const char *name,
   const struct vsp1_entity_operations *ops,
   const unsigned int *formats, unsigned int num_formats,
   size_t data_size, u32 meta_format)
{
 int ret;

 histo->formats = formats;
 histo->num_formats = num_formats;
 histo->data_size = data_size;
 histo->meta_format = meta_format;

 histo->pad.flags = MEDIA_PAD_FL_SINK;
 histo->video.vfl_dir = VFL_DIR_RX;

 mutex_init(&histo->lock);
 spin_lock_init(&histo->irqlock);
 INIT_LIST_HEAD(&histo->irqqueue);
 init_waitqueue_head(&histo->wait_queue);


 histo->entity.ops = ops;
 histo->entity.type = type;

 ret = vsp1_entity_init(vsp1, &histo->entity, name, 2, &histo_ops,
          MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
 if (ret < 0)
  return ret;


 ret = media_entity_pads_init(&histo->video.entity, 1, &histo->pad);
 if (ret < 0)
  return ret;


 histo->video.v4l2_dev = &vsp1->v4l2_dev;
 histo->video.fops = &histo_v4l2_fops;
 snprintf(histo->video.name, sizeof(histo->video.name),
   "%s histo", histo->entity.subdev.name);
 histo->video.vfl_type = VFL_TYPE_GRABBER;
 histo->video.release = video_device_release_empty;
 histo->video.ioctl_ops = &histo_v4l2_ioctl_ops;
 histo->video.device_caps = V4L2_CAP_META_CAPTURE | V4L2_CAP_STREAMING;

 video_set_drvdata(&histo->video, histo);


 histo->queue.type = V4L2_BUF_TYPE_META_CAPTURE;
 histo->queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
 histo->queue.lock = &histo->lock;
 histo->queue.drv_priv = histo;
 histo->queue.buf_struct_size = sizeof(struct vsp1_histogram_buffer);
 histo->queue.ops = &histo_video_queue_qops;
 histo->queue.mem_ops = &vb2_vmalloc_memops;
 histo->queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_COPY;
 histo->queue.dev = vsp1->dev;
 ret = vb2_queue_init(&histo->queue);
 if (ret < 0) {
  dev_err(vsp1->dev, "failed to initialize vb2 queue\n");
  goto error;
 }


 histo->video.queue = &histo->queue;
 ret = video_register_device(&histo->video, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  dev_err(vsp1->dev, "failed to register video device\n");
  goto error;
 }

 return 0;

error:
 vsp1_histogram_cleanup(histo);
 return ret;
}
