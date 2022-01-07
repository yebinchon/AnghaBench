
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int name; } ;
struct v4l2_input {scalar_t__ index; int name; int type; } ;
struct exynos_video_entity {int pipe; } ;
struct TYPE_2__ {struct exynos_video_entity ve; } ;
struct fimc_dev {TYPE_1__ vid_cap; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int IDX_SENSOR ;
 int V4L2_INPUT_TYPE_CAMERA ;
 struct v4l2_subdev* __fimc_md_get_subdev (int ,int ) ;
 int fimc_md_graph_lock (struct exynos_video_entity*) ;
 int fimc_md_graph_unlock (struct exynos_video_entity*) ;
 int strscpy (int ,int ,int) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_enum_input(struct file *file, void *priv,
          struct v4l2_input *i)
{
 struct fimc_dev *fimc = video_drvdata(file);
 struct exynos_video_entity *ve = &fimc->vid_cap.ve;
 struct v4l2_subdev *sd;

 if (i->index != 0)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;
 fimc_md_graph_lock(ve);
 sd = __fimc_md_get_subdev(ve->pipe, IDX_SENSOR);
 fimc_md_graph_unlock(ve);

 if (sd)
  strscpy(i->name, sd->name, sizeof(i->name));

 return 0;
}
