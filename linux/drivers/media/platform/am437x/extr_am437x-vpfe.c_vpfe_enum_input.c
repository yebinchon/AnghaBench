
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_subdev_info {struct v4l2_input* inputs; } ;
struct vpfe_device {TYPE_1__* cfg; } ;
struct v4l2_input {int index; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct vpfe_subdev_info* sub_devs; } ;


 int EINVAL ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*) ;
 scalar_t__ vpfe_get_subdev_input_index (struct vpfe_device*,int*,int*,int ) ;

__attribute__((used)) static int vpfe_enum_input(struct file *file, void *priv,
      struct v4l2_input *inp)
{
 struct vpfe_device *vpfe = video_drvdata(file);
 struct vpfe_subdev_info *sdinfo;
 int subdev, index;

 vpfe_dbg(2, vpfe, "vpfe_enum_input\n");

 if (vpfe_get_subdev_input_index(vpfe, &subdev, &index,
     inp->index) < 0) {
  vpfe_dbg(1, vpfe,
   "input information not found for the subdev\n");
  return -EINVAL;
 }
 sdinfo = &vpfe->cfg->sub_devs[subdev];
 *inp = sdinfo->inputs[index];

 return 0;
}
