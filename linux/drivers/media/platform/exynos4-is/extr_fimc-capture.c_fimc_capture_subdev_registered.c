
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int v4l2_dev; } ;
struct TYPE_3__ {int * pipe; } ;
struct TYPE_4__ {TYPE_1__ ve; } ;
struct fimc_dev {TYPE_2__ vid_cap; } ;


 int ENXIO ;
 int fimc_register_capture_device (struct fimc_dev*,int ) ;
 int fimc_register_m2m_device (struct fimc_dev*,int ) ;
 int fimc_unregister_m2m_device (struct fimc_dev*) ;
 int * v4l2_get_subdev_hostdata (struct v4l2_subdev*) ;
 struct fimc_dev* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int fimc_capture_subdev_registered(struct v4l2_subdev *sd)
{
 struct fimc_dev *fimc = v4l2_get_subdevdata(sd);
 int ret;

 if (fimc == ((void*)0))
  return -ENXIO;

 ret = fimc_register_m2m_device(fimc, sd->v4l2_dev);
 if (ret)
  return ret;

 fimc->vid_cap.ve.pipe = v4l2_get_subdev_hostdata(sd);

 ret = fimc_register_capture_device(fimc, sd->v4l2_dev);
 if (ret) {
  fimc_unregister_m2m_device(fimc);
  fimc->vid_cap.ve.pipe = ((void*)0);
 }

 return ret;
}
