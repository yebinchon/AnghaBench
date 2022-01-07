
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpbe_display {struct vpbe_device* vpbe_dev; } ;
struct vpbe_device {int v4l2_dev; int venc; } ;


 int VENC_GET_FLD ;
 int core ;
 int ioctl ;
 int v4l2_err (int *,char*) ;
 int v4l2_subdev_call (int ,int ,int ,int ,int*) ;

__attribute__((used)) static int venc_is_second_field(struct vpbe_display *disp_dev)
{
 struct vpbe_device *vpbe_dev = disp_dev->vpbe_dev;
 int ret, val;

 ret = v4l2_subdev_call(vpbe_dev->venc,
          core,
          ioctl,
          VENC_GET_FLD,
          &val);
 if (ret < 0) {
  v4l2_err(&vpbe_dev->v4l2_dev,
    "Error in getting Field ID 0\n");
  return 1;
 }
 return val;
}
