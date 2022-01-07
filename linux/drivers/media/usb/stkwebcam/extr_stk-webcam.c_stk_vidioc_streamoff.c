
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stk_camera {int n_sbufs; int spinlock; TYPE_2__* sio_bufs; int sio_full; int sio_avail; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_3__ {scalar_t__ flags; } ;
struct TYPE_4__ {TYPE_1__ v4lbuf; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stk_stop_stream (struct stk_camera*) ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int stk_vidioc_streamoff(struct file *filp,
  void *priv, enum v4l2_buf_type type)
{
 struct stk_camera *dev = video_drvdata(filp);
 unsigned long flags;
 int i;
 stk_stop_stream(dev);
 spin_lock_irqsave(&dev->spinlock, flags);
 INIT_LIST_HEAD(&dev->sio_avail);
 INIT_LIST_HEAD(&dev->sio_full);
 for (i = 0; i < dev->n_sbufs; i++) {
  INIT_LIST_HEAD(&dev->sio_bufs[i].list);
  dev->sio_bufs[i].v4lbuf.flags = 0;
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);
 return 0;
}
