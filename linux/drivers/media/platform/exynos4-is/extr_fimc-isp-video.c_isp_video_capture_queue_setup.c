
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {unsigned int width; unsigned int height; } ;
struct TYPE_2__ {struct fimc_fmt* format; struct v4l2_pix_format_mplane pixfmt; } ;
struct fimc_isp {TYPE_1__ video_capture; } ;
struct fimc_fmt {unsigned int memplanes; unsigned int* depth; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int FIMC_ISP_REQ_BUFS_MAX ;
 int FIMC_ISP_REQ_BUFS_MIN ;
 unsigned int clamp_t (int ,unsigned int,int ,int ) ;
 int u32 ;
 struct fimc_isp* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int isp_video_capture_queue_setup(struct vb2_queue *vq,
   unsigned int *num_buffers, unsigned int *num_planes,
   unsigned int sizes[], struct device *alloc_devs[])
{
 struct fimc_isp *isp = vb2_get_drv_priv(vq);
 struct v4l2_pix_format_mplane *vid_fmt = &isp->video_capture.pixfmt;
 const struct fimc_fmt *fmt = isp->video_capture.format;
 unsigned int wh, i;

 wh = vid_fmt->width * vid_fmt->height;

 if (fmt == ((void*)0))
  return -EINVAL;

 *num_buffers = clamp_t(u32, *num_buffers, FIMC_ISP_REQ_BUFS_MIN,
      FIMC_ISP_REQ_BUFS_MAX);
 if (*num_planes) {
  if (*num_planes != fmt->memplanes)
   return -EINVAL;
  for (i = 0; i < *num_planes; i++)
   if (sizes[i] < (wh * fmt->depth[i]) / 8)
    return -EINVAL;
  return 0;
 }

 *num_planes = fmt->memplanes;

 for (i = 0; i < fmt->memplanes; i++)
  sizes[i] = (wh * fmt->depth[i]) / 8;

 return 0;
}
