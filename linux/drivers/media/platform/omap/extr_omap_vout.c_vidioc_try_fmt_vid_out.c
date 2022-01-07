
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int pix; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct omapvideo_info {struct omap_overlay** overlays; } ;
struct TYPE_6__ {int width; int height; } ;
struct TYPE_7__ {TYPE_2__ fmt; } ;
struct omap_vout_device {TYPE_3__ fbuf; struct omapvideo_info vid_info; } ;
struct omap_video_timings {int x_res; int y_res; } ;
struct omap_overlay {struct omap_dss_device* (* get_device ) (struct omap_overlay*) ;} ;
struct TYPE_5__ {struct omap_video_timings timings; } ;
struct omap_dss_device {TYPE_1__ panel; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int omap_vout_try_format (int *) ;
 struct omap_dss_device* stub1 (struct omap_overlay*) ;
 struct omap_vout_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_out(struct file *file, void *fh,
   struct v4l2_format *f)
{
 struct omap_overlay *ovl;
 struct omapvideo_info *ovid;
 struct omap_video_timings *timing;
 struct omap_vout_device *vout = video_drvdata(file);
 struct omap_dss_device *dssdev;

 ovid = &vout->vid_info;
 ovl = ovid->overlays[0];

 dssdev = ovl->get_device(ovl);

 if (!dssdev)
  return -EINVAL;

 timing = &dssdev->panel.timings;

 vout->fbuf.fmt.height = timing->y_res;
 vout->fbuf.fmt.width = timing->x_res;

 omap_vout_try_format(&f->fmt.pix);
 return 0;
}
