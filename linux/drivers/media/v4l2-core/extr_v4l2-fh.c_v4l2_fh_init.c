
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int * valid_ioctls; int flags; int ctrl_handler; } ;
struct v4l2_fh {int sequence; int subscribe_lock; int subscribed; int available; int wait; int prio; struct video_device* vdev; int list; int ctrl_handler; } ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_FL_USES_V4L2_FH ;
 int V4L2_PRIORITY_UNSET ;
 int VIDIOC_G_PRIORITY ;
 int VIDIOC_S_PRIORITY ;
 int _IOC_NR (int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int set_bit (int ,int *) ;

void v4l2_fh_init(struct v4l2_fh *fh, struct video_device *vdev)
{
 fh->vdev = vdev;

 fh->ctrl_handler = vdev->ctrl_handler;
 INIT_LIST_HEAD(&fh->list);
 set_bit(V4L2_FL_USES_V4L2_FH, &fh->vdev->flags);





 set_bit(_IOC_NR(VIDIOC_G_PRIORITY), vdev->valid_ioctls);
 set_bit(_IOC_NR(VIDIOC_S_PRIORITY), vdev->valid_ioctls);
 fh->prio = V4L2_PRIORITY_UNSET;
 init_waitqueue_head(&fh->wait);
 INIT_LIST_HEAD(&fh->available);
 INIT_LIST_HEAD(&fh->subscribed);
 fh->sequence = -1;
 mutex_init(&fh->subscribe_lock);
}
