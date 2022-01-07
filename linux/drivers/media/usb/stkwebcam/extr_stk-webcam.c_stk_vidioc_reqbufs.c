
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {scalar_t__ memory; int count; } ;
struct stk_camera {int n_sbufs; struct file* owner; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 scalar_t__ is_streaming (struct stk_camera*) ;
 int stk_allocate_buffers (struct stk_camera*,int) ;
 int stk_camera_write_reg (struct stk_camera*,int,int) ;
 int stk_free_buffers (struct stk_camera*) ;
 int unset_initialised (struct stk_camera*) ;
 struct stk_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int stk_vidioc_reqbufs(struct file *filp,
  void *priv, struct v4l2_requestbuffers *rb)
{
 struct stk_camera *dev = video_drvdata(filp);

 if (dev == ((void*)0))
  return -ENODEV;
 if (rb->memory != V4L2_MEMORY_MMAP)
  return -EINVAL;
 if (is_streaming(dev)
  || (dev->owner && dev->owner != filp))
  return -EBUSY;
 stk_free_buffers(dev);
 if (rb->count == 0) {
  stk_camera_write_reg(dev, 0x0, 0x49);
  unset_initialised(dev);
  dev->owner = ((void*)0);
  return 0;
 }
 dev->owner = filp;


 if (rb->count < 3)
  rb->count = 3;

 else if (rb->count > 5)
  rb->count = 5;

 stk_allocate_buffers(dev, rb->count);
 rb->count = dev->n_sbufs;
 return 0;
}
