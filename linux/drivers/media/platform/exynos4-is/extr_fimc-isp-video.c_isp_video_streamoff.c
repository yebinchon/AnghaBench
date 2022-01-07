
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entity; } ;
struct TYPE_4__ {TYPE_1__ vdev; } ;
struct fimc_is_video {scalar_t__ streaming; TYPE_2__ ve; } ;
struct fimc_isp {struct fimc_is_video video_capture; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int media_pipeline_stop (int *) ;
 int vb2_ioctl_streamoff (struct file*,void*,int) ;
 struct fimc_isp* video_drvdata (struct file*) ;

__attribute__((used)) static int isp_video_streamoff(struct file *file, void *priv,
     enum v4l2_buf_type type)
{
 struct fimc_isp *isp = video_drvdata(file);
 struct fimc_is_video *video = &isp->video_capture;
 int ret;

 ret = vb2_ioctl_streamoff(file, priv, type);
 if (ret < 0)
  return ret;

 media_pipeline_stop(&video->ve.vdev.entity);
 video->streaming = 0;
 return 0;
}
