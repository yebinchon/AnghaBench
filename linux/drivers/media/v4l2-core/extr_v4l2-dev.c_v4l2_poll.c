
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dev_debug; TYPE_1__* fops; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int __poll_t ;
struct TYPE_2__ {int (* poll ) (struct file*,struct poll_table_struct*) ;} ;


 int DEFAULT_POLLMASK ;
 int EPOLLERR ;
 int EPOLLHUP ;
 int V4L2_DEV_DEBUG_POLL ;
 int dprintk (char*,int ,int) ;
 int stub1 (struct file*,struct poll_table_struct*) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 scalar_t__ video_is_registered (struct video_device*) ;

__attribute__((used)) static __poll_t v4l2_poll(struct file *filp, struct poll_table_struct *poll)
{
 struct video_device *vdev = video_devdata(filp);
 __poll_t res = EPOLLERR | EPOLLHUP;

 if (!vdev->fops->poll)
  return DEFAULT_POLLMASK;
 if (video_is_registered(vdev))
  res = vdev->fops->poll(filp, poll);
 if (vdev->dev_debug & V4L2_DEV_DEBUG_POLL)
  dprintk("%s: poll: %08x\n",
   video_device_node_name(vdev), res);
 return res;
}
