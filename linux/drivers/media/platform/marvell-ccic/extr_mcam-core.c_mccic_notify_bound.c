
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int name; } ;
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct TYPE_4__ {int * queue; int * lock; int * v4l2_dev; } ;
struct mcam_camera {int s_mutex; struct v4l2_subdev* sensor; TYPE_1__ vdev; int vb_queue; int v4l2_dev; } ;


 int EBUSY ;
 int VFL_TYPE_GRABBER ;
 int cam_dbg (struct mcam_camera*,char*,int ) ;
 int cam_err (struct mcam_camera*,char*) ;
 int mcam_cam_init (struct mcam_camera*) ;
 int mcam_setup_vb2 (struct mcam_camera*) ;
 TYPE_1__ mcam_v4l_template ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct mcam_camera* notifier_to_mcam (struct v4l2_async_notifier*) ;
 int v4l2_set_subdev_hostdata (struct v4l2_subdev*,struct mcam_camera*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct mcam_camera*) ;

__attribute__((used)) static int mccic_notify_bound(struct v4l2_async_notifier *notifier,
 struct v4l2_subdev *subdev, struct v4l2_async_subdev *asd)
{
 struct mcam_camera *cam = notifier_to_mcam(notifier);
 int ret;

 mutex_lock(&cam->s_mutex);
 if (cam->sensor) {
  cam_err(cam, "sensor already bound\n");
  ret = -EBUSY;
  goto out;
 }

 v4l2_set_subdev_hostdata(subdev, cam);
 cam->sensor = subdev;

 ret = mcam_cam_init(cam);
 if (ret) {
  cam->sensor = ((void*)0);
  goto out;
 }

 ret = mcam_setup_vb2(cam);
 if (ret) {
  cam->sensor = ((void*)0);
  goto out;
 }

 cam->vdev = mcam_v4l_template;
 cam->vdev.v4l2_dev = &cam->v4l2_dev;
 cam->vdev.lock = &cam->s_mutex;
 cam->vdev.queue = &cam->vb_queue;
 video_set_drvdata(&cam->vdev, cam);
 ret = video_register_device(&cam->vdev, VFL_TYPE_GRABBER, -1);
 if (ret) {
  cam->sensor = ((void*)0);
  goto out;
 }

 cam_dbg(cam, "sensor %s bound\n", subdev->name);
out:
 mutex_unlock(&cam->s_mutex);
 return ret;
}
