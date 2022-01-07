
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* v4l2_dev; int flags; } ;
struct v4l2_fh {int ctrl_handler; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_2__ {int name; } ;


 int V4L2_FL_USES_V4L2_FH ;
 scalar_t__ test_bit (int ,int *) ;
 int v4l2_ctrl_handler_log_status (int ,int ) ;
 struct video_device* video_devdata (struct file*) ;

int v4l2_ctrl_log_status(struct file *file, void *fh)
{
 struct video_device *vfd = video_devdata(file);
 struct v4l2_fh *vfh = file->private_data;

 if (test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags) && vfd->v4l2_dev)
  v4l2_ctrl_handler_log_status(vfh->ctrl_handler,
   vfd->v4l2_dev->name);
 return 0;
}
