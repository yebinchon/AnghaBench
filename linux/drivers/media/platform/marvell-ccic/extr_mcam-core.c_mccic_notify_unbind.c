
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct mcam_camera {int s_mutex; struct v4l2_subdev* sensor; int vdev; } ;


 int cam_dbg (struct mcam_camera*,char*,int ) ;
 int cam_err (struct mcam_camera*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mcam_camera* notifier_to_mcam (struct v4l2_async_notifier*) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void mccic_notify_unbind(struct v4l2_async_notifier *notifier,
 struct v4l2_subdev *subdev, struct v4l2_async_subdev *asd)
{
 struct mcam_camera *cam = notifier_to_mcam(notifier);

 mutex_lock(&cam->s_mutex);
 if (cam->sensor != subdev) {
  cam_err(cam, "sensor %s not bound\n", subdev->name);
  goto out;
 }

 video_unregister_device(&cam->vdev);
 cam->sensor = ((void*)0);
 cam_dbg(cam, "sensor %s unbound\n", subdev->name);

out:
 mutex_unlock(&cam->s_mutex);
}
