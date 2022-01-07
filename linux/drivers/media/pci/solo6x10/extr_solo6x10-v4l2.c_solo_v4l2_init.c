
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct solo_vb2_buf {int dummy; } ;
struct TYPE_14__ {int error; } ;
struct TYPE_13__ {int io_modes; int gfp_flags; int buf_struct_size; int * dev; int * lock; int timestamp_flags; struct solo_dev* drv_priv; int * mem_ops; int * ops; int type; } ;
struct solo_dev {int nr_chans; TYPE_2__* vfd; TYPE_7__ disp_hdl; int nr_ext; TYPE_1__* pdev; TYPE_6__ vidq; int lock; int v4l2_dev; int vidq_active; int slock; int disp_thread_wait; } ;
struct TYPE_12__ {int num; int name; TYPE_7__* ctrl_handler; int * lock; TYPE_6__* queue; int * v4l2_dev; } ;
struct TYPE_11__ {int dev; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 char* SOLO6X10_NAME ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 int __GFP_DMA32 ;
 int __GFP_KSWAPD_RECLAIM ;
 int dev_info (int *,char*,int,int,int ) ;
 scalar_t__ erase_off (struct solo_dev*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*,int) ;
 int solo_motion_trace_ctrl ;
 int solo_v4l2_set_ch (struct solo_dev*,int) ;
 TYPE_2__ solo_v4l2_template ;
 int solo_video_qops ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_handler_free (TYPE_7__*) ;
 int v4l2_ctrl_handler_init (TYPE_7__*,int) ;
 int v4l2_ctrl_new_custom (TYPE_7__*,int *,int *) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (TYPE_6__*) ;
 TYPE_2__* video_device_alloc () ;
 int video_device_release (TYPE_2__*) ;
 int video_register_device (TYPE_2__*,int ,unsigned int) ;
 int video_set_drvdata (TYPE_2__*,struct solo_dev*) ;

int solo_v4l2_init(struct solo_dev *solo_dev, unsigned nr)
{
 int ret;
 int i;

 init_waitqueue_head(&solo_dev->disp_thread_wait);
 spin_lock_init(&solo_dev->slock);
 mutex_init(&solo_dev->lock);
 INIT_LIST_HEAD(&solo_dev->vidq_active);

 solo_dev->vfd = video_device_alloc();
 if (!solo_dev->vfd)
  return -ENOMEM;

 *solo_dev->vfd = solo_v4l2_template;
 solo_dev->vfd->v4l2_dev = &solo_dev->v4l2_dev;
 solo_dev->vfd->queue = &solo_dev->vidq;
 solo_dev->vfd->lock = &solo_dev->lock;
 v4l2_ctrl_handler_init(&solo_dev->disp_hdl, 1);
 v4l2_ctrl_new_custom(&solo_dev->disp_hdl, &solo_motion_trace_ctrl, ((void*)0));
 if (solo_dev->disp_hdl.error) {
  ret = solo_dev->disp_hdl.error;
  goto fail;
 }
 solo_dev->vfd->ctrl_handler = &solo_dev->disp_hdl;

 video_set_drvdata(solo_dev->vfd, solo_dev);

 solo_dev->vidq.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 solo_dev->vidq.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
 solo_dev->vidq.ops = &solo_video_qops;
 solo_dev->vidq.mem_ops = &vb2_dma_contig_memops;
 solo_dev->vidq.drv_priv = solo_dev;
 solo_dev->vidq.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 solo_dev->vidq.gfp_flags = __GFP_DMA32 | __GFP_KSWAPD_RECLAIM;
 solo_dev->vidq.buf_struct_size = sizeof(struct solo_vb2_buf);
 solo_dev->vidq.lock = &solo_dev->lock;
 solo_dev->vidq.dev = &solo_dev->pdev->dev;
 ret = vb2_queue_init(&solo_dev->vidq);
 if (ret < 0)
  goto fail;


 for (i = 0; i < solo_dev->nr_chans; i++) {
  solo_v4l2_set_ch(solo_dev, i);
  while (erase_off(solo_dev))
                   ;
 }


 solo_v4l2_set_ch(solo_dev, 0);
 while (erase_off(solo_dev))
                  ;

 ret = video_register_device(solo_dev->vfd, VFL_TYPE_GRABBER, nr);
 if (ret < 0)
  goto fail;

 snprintf(solo_dev->vfd->name, sizeof(solo_dev->vfd->name), "%s (%i)",
   SOLO6X10_NAME, solo_dev->vfd->num);

 dev_info(&solo_dev->pdev->dev, "Display as /dev/video%d with %d inputs (%d extended)\n",
   solo_dev->vfd->num,
   solo_dev->nr_chans, solo_dev->nr_ext);

 return 0;

fail:
 video_device_release(solo_dev->vfd);
 v4l2_ctrl_handler_free(&solo_dev->disp_hdl);
 solo_dev->vfd = ((void*)0);
 return ret;
}
