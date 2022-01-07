
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int v4l2_dev; } ;
struct TYPE_3__ {int * pipe; } ;
struct TYPE_4__ {TYPE_1__ ve; } ;
struct fimc_isp {TYPE_2__ video_capture; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int fimc_isp_video_device_register (struct fimc_isp*,int ,int ) ;
 int * v4l2_get_subdev_hostdata (struct v4l2_subdev*) ;
 struct fimc_isp* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int fimc_isp_subdev_registered(struct v4l2_subdev *sd)
{
 struct fimc_isp *isp = v4l2_get_subdevdata(sd);
 int ret;


 isp->video_capture.ve.pipe = v4l2_get_subdev_hostdata(sd);

 ret = fimc_isp_video_device_register(isp, sd->v4l2_dev,
   V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
 if (ret < 0)
  isp->video_capture.ve.pipe = ((void*)0);

 return ret;
}
