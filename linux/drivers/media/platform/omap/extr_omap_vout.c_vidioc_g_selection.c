
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct v4l2_selection {scalar_t__ type; int target; TYPE_1__ r; } ;
struct v4l2_pix_format {int width; int height; } ;
struct omap_vout_device {int fbuf; struct v4l2_pix_format pix; TYPE_1__ crop; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;



 int omap_vout_default_crop (struct v4l2_pix_format*,int *,TYPE_1__*) ;
 struct omap_vout_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_selection(struct file *file, void *fh, struct v4l2_selection *sel)
{
 struct omap_vout_device *vout = video_drvdata(file);
 struct v4l2_pix_format *pix = &vout->pix;

 if (sel->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
  return -EINVAL;

 switch (sel->target) {
 case 130:
  sel->r = vout->crop;
  break;
 case 128:
  omap_vout_default_crop(&vout->pix, &vout->fbuf, &sel->r);
  break;
 case 129:

  sel->r.width = pix->width & ~1;
  sel->r.height = pix->height & ~1;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
