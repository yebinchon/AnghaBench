
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_3__ {int entity; } ;
struct cio2_queue {TYPE_1__ vdev; int sensor; int pipe; int frame_sequence; } ;
struct cio2_device {int streaming; TYPE_2__* pci_dev; struct cio2_queue* cur_queue; } ;
struct TYPE_4__ {int dev; } ;


 int VB2_BUF_STATE_QUEUED ;
 int atomic_set (int *,int ) ;
 int cio2_hw_exit (struct cio2_device*,struct cio2_queue*) ;
 int cio2_hw_init (struct cio2_device*,struct cio2_queue*) ;
 int cio2_vb2_return_all_buffers (struct cio2_queue*,int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int media_pipeline_start (int *,int *) ;
 int media_pipeline_stop (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int s_stream ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 struct cio2_device* vb2_get_drv_priv (struct vb2_queue*) ;
 struct cio2_queue* vb2q_to_cio2_queue (struct vb2_queue*) ;
 int video ;

__attribute__((used)) static int cio2_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct cio2_queue *q = vb2q_to_cio2_queue(vq);
 struct cio2_device *cio2 = vb2_get_drv_priv(vq);
 int r;

 cio2->cur_queue = q;
 atomic_set(&q->frame_sequence, 0);

 r = pm_runtime_get_sync(&cio2->pci_dev->dev);
 if (r < 0) {
  dev_info(&cio2->pci_dev->dev, "failed to set power %d\n", r);
  pm_runtime_put_noidle(&cio2->pci_dev->dev);
  return r;
 }

 r = media_pipeline_start(&q->vdev.entity, &q->pipe);
 if (r)
  goto fail_pipeline;

 r = cio2_hw_init(cio2, q);
 if (r)
  goto fail_hw;


 r = v4l2_subdev_call(q->sensor, video, s_stream, 1);
 if (r)
  goto fail_csi2_subdev;

 cio2->streaming = 1;

 return 0;

fail_csi2_subdev:
 cio2_hw_exit(cio2, q);
fail_hw:
 media_pipeline_stop(&q->vdev.entity);
fail_pipeline:
 dev_dbg(&cio2->pci_dev->dev, "failed to start streaming (%d)\n", r);
 cio2_vb2_return_all_buffers(q, VB2_BUF_STATE_QUEUED);
 pm_runtime_put(&cio2->pci_dev->dev);

 return r;
}
