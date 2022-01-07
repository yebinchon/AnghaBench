
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct file {int * private_data; } ;
struct camera_data {int v4l2_lock; scalar_t__ mmapped; int * stream_fh; int vdev; } ;


 int cpia2_free_buffers (struct camera_data*) ;
 int cpia2_save_camera_state (struct camera_data*) ;
 int cpia2_set_low_power (struct camera_data*) ;
 int cpia2_usb_stream_stop (struct camera_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct video_device* video_devdata (struct file*) ;
 struct camera_data* video_get_drvdata (struct video_device*) ;
 scalar_t__ video_is_registered (int *) ;

__attribute__((used)) static int cpia2_close(struct file *file)
{
 struct video_device *dev = video_devdata(file);
 struct camera_data *cam = video_get_drvdata(dev);

 mutex_lock(&cam->v4l2_lock);
 if (video_is_registered(&cam->vdev) && v4l2_fh_is_singular_file(file)) {
  cpia2_usb_stream_stop(cam);


  cpia2_save_camera_state(cam);

  cpia2_set_low_power(cam);
  cpia2_free_buffers(cam);
 }

 if (cam->stream_fh == file->private_data) {
  cam->stream_fh = ((void*)0);
  cam->mmapped = 0;
 }
 mutex_unlock(&cam->v4l2_lock);
 return v4l2_fh_release(file);
}
