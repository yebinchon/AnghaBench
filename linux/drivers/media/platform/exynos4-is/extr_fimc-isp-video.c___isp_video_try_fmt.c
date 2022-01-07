
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format_mplane {int height; int width; int pixelformat; int num_planes; int field; int colorspace; } ;
struct fimc_isp {int dummy; } ;
struct fimc_fmt {int fourcc; int memplanes; } ;


 int FIMC_ISP_SOURCE_HEIGHT_MAX ;
 int FIMC_ISP_SOURCE_HEIGHT_MIN ;
 int FIMC_ISP_SOURCE_WIDTH_MAX ;
 int FIMC_ISP_SOURCE_WIDTH_MIN ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct fimc_fmt* fimc_isp_find_format (int *,int *,int) ;
 int v4l_bound_align_image (int *,int ,int ,int,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void __isp_video_try_fmt(struct fimc_isp *isp,
    struct v4l2_pix_format_mplane *pixm,
    const struct fimc_fmt **fmt)
{
 const struct fimc_fmt *__fmt;

 __fmt = fimc_isp_find_format(&pixm->pixelformat, ((void*)0), 2);

 if (fmt)
  *fmt = __fmt;

 pixm->colorspace = V4L2_COLORSPACE_SRGB;
 pixm->field = V4L2_FIELD_NONE;
 pixm->num_planes = __fmt->memplanes;
 pixm->pixelformat = __fmt->fourcc;




 v4l_bound_align_image(&pixm->width, FIMC_ISP_SOURCE_WIDTH_MIN,
         FIMC_ISP_SOURCE_WIDTH_MAX, 3,
         &pixm->height, FIMC_ISP_SOURCE_HEIGHT_MIN,
         FIMC_ISP_SOURCE_HEIGHT_MAX, 0, 0);
}
