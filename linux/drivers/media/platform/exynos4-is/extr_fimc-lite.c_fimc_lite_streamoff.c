
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entity; } ;
struct TYPE_4__ {TYPE_1__ vdev; } ;
struct fimc_lite {int streaming; TYPE_2__ ve; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int media_pipeline_stop (int *) ;
 int vb2_ioctl_streamoff (struct file*,void*,int) ;
 struct fimc_lite* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_lite_streamoff(struct file *file, void *priv,
          enum v4l2_buf_type type)
{
 struct fimc_lite *fimc = video_drvdata(file);
 int ret;

 ret = vb2_ioctl_streamoff(file, priv, type);
 if (ret < 0)
  return ret;

 media_pipeline_stop(&fimc->ve.vdev.entity);
 fimc->streaming = 0;
 return 0;
}
