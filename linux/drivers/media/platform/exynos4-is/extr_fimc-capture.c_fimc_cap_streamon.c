
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;
struct fimc_source_info {int fimc_bus_type; } ;
struct TYPE_4__ {struct media_entity entity; } ;
struct TYPE_5__ {TYPE_3__* pipe; TYPE_1__ vdev; } ;
struct fimc_vid_cap {scalar_t__ input; int streaming; scalar_t__ user_subdev_api; struct fimc_source_info source_config; TYPE_2__ ve; } ;
struct fimc_dev {struct fimc_vid_cap vid_cap; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_6__ {int mp; } ;


 int EBUSY ;
 int EPIPE ;
 int FIMC_BUS_TYPE_ISP_WRITEBACK ;
 scalar_t__ GRP_ID_FIMC_IS ;
 int IDX_SENSOR ;
 struct v4l2_subdev* __fimc_md_get_subdev (TYPE_3__*,int ) ;
 scalar_t__ fimc_capture_active (struct fimc_dev*) ;
 int fimc_pipeline_validate (struct fimc_dev*) ;
 int media_pipeline_start (struct media_entity*,int *) ;
 int media_pipeline_stop (struct media_entity*) ;
 struct fimc_source_info* v4l2_get_subdev_hostdata (struct v4l2_subdev*) ;
 int vb2_ioctl_streamon (struct file*,void*,int) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_streamon(struct file *file, void *priv,
        enum v4l2_buf_type type)
{
 struct fimc_dev *fimc = video_drvdata(file);
 struct fimc_vid_cap *vc = &fimc->vid_cap;
 struct media_entity *entity = &vc->ve.vdev.entity;
 struct fimc_source_info *si = ((void*)0);
 struct v4l2_subdev *sd;
 int ret;

 if (fimc_capture_active(fimc))
  return -EBUSY;

 ret = media_pipeline_start(entity, &vc->ve.pipe->mp);
 if (ret < 0)
  return ret;

 sd = __fimc_md_get_subdev(vc->ve.pipe, IDX_SENSOR);
 if (sd)
  si = v4l2_get_subdev_hostdata(sd);

 if (si == ((void*)0)) {
  ret = -EPIPE;
  goto err_p_stop;
 }




 vc->source_config = *si;

 if (vc->input == GRP_ID_FIMC_IS)
  vc->source_config.fimc_bus_type = FIMC_BUS_TYPE_ISP_WRITEBACK;

 if (vc->user_subdev_api) {
  ret = fimc_pipeline_validate(fimc);
  if (ret < 0)
   goto err_p_stop;
 }

 ret = vb2_ioctl_streamon(file, priv, type);
 if (!ret) {
  vc->streaming = 1;
  return ret;
 }

err_p_stop:
 media_pipeline_stop(entity);
 return ret;
}
