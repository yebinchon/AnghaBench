
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct media_entity {int dummy; } ;
struct TYPE_6__ {int entity; } ;
struct TYPE_8__ {struct media_entity entity; } ;
struct TYPE_7__ {TYPE_1__* pipe; TYPE_4__ vdev; } ;
struct fimc_lite {int streaming; TYPE_2__ subdev; int sensor; TYPE_3__ ve; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_5__ {int mp; } ;


 int EBUSY ;
 int fimc_find_remote_sensor (int *) ;
 scalar_t__ fimc_lite_active (struct fimc_lite*) ;
 int fimc_pipeline_validate (struct fimc_lite*) ;
 int media_pipeline_start (struct media_entity*,int *) ;
 int media_pipeline_stop (struct media_entity*) ;
 int vb2_ioctl_streamon (struct file*,void*,int) ;
 struct fimc_lite* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_lite_streamon(struct file *file, void *priv,
         enum v4l2_buf_type type)
{
 struct fimc_lite *fimc = video_drvdata(file);
 struct media_entity *entity = &fimc->ve.vdev.entity;
 int ret;

 if (fimc_lite_active(fimc))
  return -EBUSY;

 ret = media_pipeline_start(entity, &fimc->ve.pipe->mp);
 if (ret < 0)
  return ret;

 ret = fimc_pipeline_validate(fimc);
 if (ret < 0)
  goto err_p_stop;

 fimc->sensor = fimc_find_remote_sensor(&fimc->subdev.entity);

 ret = vb2_ioctl_streamon(file, priv, type);
 if (!ret) {
  fimc->streaming = 1;
  return ret;
 }

err_p_stop:
 media_pipeline_stop(entity);
 return 0;
}
