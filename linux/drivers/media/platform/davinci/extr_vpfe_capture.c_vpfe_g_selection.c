
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; } ;
struct vpfe_device {size_t std_index; TYPE_1__ crop; int v4l2_dev; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int height; int width; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;



 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 TYPE_2__* vpfe_standards ;

__attribute__((used)) static int vpfe_g_selection(struct file *file, void *priv,
       struct v4l2_selection *sel)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_selection\n");

 if (sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 switch (sel->target) {
 case 130:
  sel->r = vpfe_dev->crop;
  break;
 case 128:
 case 129:
  sel->r.width = vpfe_standards[vpfe_dev->std_index].width;
  sel->r.height = vpfe_standards[vpfe_dev->std_index].height;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
