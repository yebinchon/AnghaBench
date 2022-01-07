
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int entity; } ;
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;
struct camss_video {int lock; TYPE_1__* camss; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int) ;
 struct v4l2_fh* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_add (struct v4l2_fh*) ;
 int v4l2_fh_init (struct v4l2_fh*,struct video_device*) ;
 int v4l2_fh_release (struct file*) ;
 int v4l2_pipeline_pm_use (int *,int) ;
 struct video_device* video_devdata (struct file*) ;
 struct camss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int video_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct camss_video *video = video_drvdata(file);
 struct v4l2_fh *vfh;
 int ret;

 mutex_lock(&video->lock);

 vfh = kzalloc(sizeof(*vfh), GFP_KERNEL);
 if (vfh == ((void*)0)) {
  ret = -ENOMEM;
  goto error_alloc;
 }

 v4l2_fh_init(vfh, vdev);
 v4l2_fh_add(vfh);

 file->private_data = vfh;

 ret = v4l2_pipeline_pm_use(&vdev->entity, 1);
 if (ret < 0) {
  dev_err(video->camss->dev, "Failed to power up pipeline: %d\n",
   ret);
  goto error_pm_use;
 }

 mutex_unlock(&video->lock);

 return 0;

error_pm_use:
 v4l2_fh_release(file);

error_alloc:
 mutex_unlock(&video->lock);

 return ret;
}
