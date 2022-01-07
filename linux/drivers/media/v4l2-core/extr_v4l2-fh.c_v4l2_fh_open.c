
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct v4l2_fh* kzalloc (int,int ) ;
 int v4l2_fh_add (struct v4l2_fh*) ;
 int v4l2_fh_init (struct v4l2_fh*,struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;

int v4l2_fh_open(struct file *filp)
{
 struct video_device *vdev = video_devdata(filp);
 struct v4l2_fh *fh = kzalloc(sizeof(*fh), GFP_KERNEL);

 filp->private_data = fh;
 if (fh == ((void*)0))
  return -ENOMEM;
 v4l2_fh_init(fh, vdev);
 v4l2_fh_add(fh);
 return 0;
}
