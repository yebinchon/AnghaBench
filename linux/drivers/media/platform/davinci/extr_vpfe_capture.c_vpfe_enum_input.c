
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_subdev_info {struct v4l2_input* inputs; } ;
struct vpfe_device {TYPE_1__* cfg; int v4l2_dev; } ;
struct v4l2_input {int index; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpfe_subdev_info* sub_devs; } ;


 int EINVAL ;
 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int v4l2_err (int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 scalar_t__ vpfe_get_subdev_input_index (struct vpfe_device*,int*,int*,int ) ;

__attribute__((used)) static int vpfe_enum_input(struct file *file, void *priv,
     struct v4l2_input *inp)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);
 struct vpfe_subdev_info *sdinfo;
 int subdev, index ;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_input\n");

 if (vpfe_get_subdev_input_index(vpfe_dev,
     &subdev,
     &index,
     inp->index) < 0) {
  v4l2_err(&vpfe_dev->v4l2_dev, "input information not found for the subdev\n");
  return -EINVAL;
 }
 sdinfo = &vpfe_dev->cfg->sub_devs[subdev];
 *inp = sdinfo->inputs[index];
 return 0;
}
