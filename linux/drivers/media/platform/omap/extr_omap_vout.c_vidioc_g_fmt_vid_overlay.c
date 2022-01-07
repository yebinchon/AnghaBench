
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_window {int * bitmap; scalar_t__ clipcount; int * clips; scalar_t__ global_alpha; int chromakey; int field; int w; } ;
struct TYPE_3__ {struct v4l2_window win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct omapvideo_info {struct omap_overlay** overlays; } ;
struct TYPE_4__ {scalar_t__ global_alpha; int chromakey; int field; int w; } ;
struct omap_vout_device {TYPE_2__ win; struct omapvideo_info vid_info; } ;
struct omap_overlay {int caps; } ;
struct file {int dummy; } ;


 int OMAP_DSS_OVL_CAP_GLOBAL_ALPHA ;
 struct omap_vout_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_overlay(struct file *file, void *fh,
   struct v4l2_format *f)
{
 struct omap_overlay *ovl;
 struct omapvideo_info *ovid;
 struct omap_vout_device *vout = video_drvdata(file);
 struct v4l2_window *win = &f->fmt.win;

 ovid = &vout->vid_info;
 ovl = ovid->overlays[0];

 win->w = vout->win.w;
 win->field = vout->win.field;
 win->chromakey = vout->win.chromakey;
 if (ovl->caps & OMAP_DSS_OVL_CAP_GLOBAL_ALPHA)
  win->global_alpha = vout->win.global_alpha;
 else
  win->global_alpha = 0;
 win->clips = ((void*)0);
 win->clipcount = 0;
 win->bitmap = ((void*)0);
 return 0;
}
