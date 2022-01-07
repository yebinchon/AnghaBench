
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct TYPE_3__ {int release; } ;
struct camera_data {int wq_stream; int v4l2_lock; TYPE_1__ v4l2_dev; } ;


 int ERR (char*) ;
 int GFP_KERNEL ;
 int cpia2_camera_release ;
 int init_waitqueue_head (int *) ;
 int kfree (struct camera_data*) ;
 struct camera_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ v4l2_device_register (int *,TYPE_1__*) ;
 int v4l2_err (TYPE_1__*,char*) ;

struct camera_data *cpia2_init_camera_struct(struct usb_interface *intf)
{
 struct camera_data *cam;

 cam = kzalloc(sizeof(*cam), GFP_KERNEL);

 if (!cam) {
  ERR("couldn't kmalloc cpia2 struct\n");
  return ((void*)0);
 }

 cam->v4l2_dev.release = cpia2_camera_release;
 if (v4l2_device_register(&intf->dev, &cam->v4l2_dev) < 0) {
  v4l2_err(&cam->v4l2_dev, "couldn't register v4l2_device\n");
  kfree(cam);
  return ((void*)0);
 }

 mutex_init(&cam->v4l2_lock);
 init_waitqueue_head(&cam->wq_stream);

 return cam;
}
