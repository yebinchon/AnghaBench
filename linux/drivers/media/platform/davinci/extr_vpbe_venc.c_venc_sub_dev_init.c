
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct venc_state {struct v4l2_subdev sd; } ;
struct v4l2_device {int dummy; } ;


 int bus_for_each_dev (int *,int *,struct venc_state**,int ) ;
 int platform_bus_type ;
 int strscpy (int ,char const*,int) ;
 scalar_t__ v4l2_device_register_subdev (struct v4l2_device*,struct v4l2_subdev*) ;
 int v4l2_err (struct v4l2_device*,char*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;
 int venc_device_get ;
 scalar_t__ venc_initialize (struct v4l2_subdev*) ;
 int venc_ops ;

struct v4l2_subdev *venc_sub_dev_init(struct v4l2_device *v4l2_dev,
  const char *venc_name)
{
 struct venc_state *venc = ((void*)0);

 bus_for_each_dev(&platform_bus_type, ((void*)0), &venc,
   venc_device_get);
 if (venc == ((void*)0))
  return ((void*)0);

 v4l2_subdev_init(&venc->sd, &venc_ops);

 strscpy(venc->sd.name, venc_name, sizeof(venc->sd.name));
 if (v4l2_device_register_subdev(v4l2_dev, &venc->sd) < 0) {
  v4l2_err(v4l2_dev,
   "vpbe unable to register venc sub device\n");
  return ((void*)0);
 }
 if (venc_initialize(&venc->sd)) {
  v4l2_err(v4l2_dev,
   "vpbe venc initialization failed\n");
  return ((void*)0);
 }

 return &venc->sd;
}
