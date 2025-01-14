
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {size_t std_index; } ;
struct v4l2_fract {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct v4l2_fract pixelaspect; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*) ;
 TYPE_1__* vpfe_standards ;

__attribute__((used)) static int vpfe_g_pixelaspect(struct file *file, void *priv,
         int type, struct v4l2_fract *f)
{
 struct vpfe_device *vpfe = video_drvdata(file);

 vpfe_dbg(2, vpfe, "vpfe_g_pixelaspect\n");

 if (type != V4L2_BUF_TYPE_VIDEO_CAPTURE ||
     vpfe->std_index >= ARRAY_SIZE(vpfe_standards))
  return -EINVAL;

 *f = vpfe_standards[vpfe->std_index].pixelaspect;

 return 0;
}
