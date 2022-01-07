
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct omap_vout_device {int pix; } ;
struct file {int dummy; } ;


 struct omap_vout_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_out(struct file *file, void *fh,
   struct v4l2_format *f)
{
 struct omap_vout_device *vout = video_drvdata(file);

 f->fmt.pix = vout->pix;
 return 0;

}
