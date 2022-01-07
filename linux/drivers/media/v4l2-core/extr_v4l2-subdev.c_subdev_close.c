
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct v4l2_subdev_fh {int owner; } ;
struct v4l2_subdev {TYPE_1__* internal_ops; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
struct TYPE_2__ {int (* close ) (struct v4l2_subdev*,struct v4l2_subdev_fh*) ;} ;


 int kfree (struct v4l2_subdev_fh*) ;
 int module_put (int ) ;
 int stub1 (struct v4l2_subdev*,struct v4l2_subdev_fh*) ;
 int subdev_fh_free (struct v4l2_subdev_fh*) ;
 struct v4l2_subdev_fh* to_v4l2_subdev_fh (struct v4l2_fh*) ;
 int v4l2_fh_del (struct v4l2_fh*) ;
 int v4l2_fh_exit (struct v4l2_fh*) ;
 struct v4l2_subdev* vdev_to_v4l2_subdev (struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int subdev_close(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct v4l2_subdev *sd = vdev_to_v4l2_subdev(vdev);
 struct v4l2_fh *vfh = file->private_data;
 struct v4l2_subdev_fh *subdev_fh = to_v4l2_subdev_fh(vfh);

 if (sd->internal_ops && sd->internal_ops->close)
  sd->internal_ops->close(sd, subdev_fh);
 module_put(subdev_fh->owner);
 v4l2_fh_del(vfh);
 v4l2_fh_exit(vfh);
 subdev_fh_free(subdev_fh);
 kfree(subdev_fh);
 file->private_data = ((void*)0);

 return 0;
}
