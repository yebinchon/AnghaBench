
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct fimc_isp {int dummy; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int fimc_isp_video_device_unregister (struct fimc_isp*,int ) ;
 struct fimc_isp* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void fimc_isp_subdev_unregistered(struct v4l2_subdev *sd)
{
 struct fimc_isp *isp = v4l2_get_subdevdata(sd);

 fimc_isp_video_device_unregister(isp,
   V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE);
}
