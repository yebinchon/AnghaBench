
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_framebuffer {int flags; } ;
struct omapvideo_info {struct omap_overlay** overlays; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int chromakey; } ;
struct omap_vout_device {TYPE_2__ fbuf; TYPE_1__ win; struct omapvideo_info vid_info; } ;
struct omap_overlay_manager_info {int trans_enabled; int trans_key_type; int partial_alpha_enabled; int trans_key; } ;
struct omap_overlay {int caps; TYPE_3__* manager; } ;
struct file {int dummy; } ;
typedef enum omap_dss_trans_key_type { ____Placeholder_omap_dss_trans_key_type } omap_dss_trans_key_type ;
struct TYPE_9__ {scalar_t__ (* set_manager_info ) (TYPE_3__*,struct omap_overlay_manager_info*) ;int (* get_manager_info ) (TYPE_3__*,struct omap_overlay_manager_info*) ;} ;


 int EINVAL ;
 int OMAP_DSS_COLOR_KEY_GFX_DST ;
 int OMAP_DSS_COLOR_KEY_VID_SRC ;
 int OMAP_DSS_OVL_CAP_ZORDER ;
 int V4L2_FBUF_FLAG_CHROMAKEY ;
 int V4L2_FBUF_FLAG_LOCAL_ALPHA ;
 int V4L2_FBUF_FLAG_SRC_CHROMAKEY ;
 int stub1 (TYPE_3__*,struct omap_overlay_manager_info*) ;
 scalar_t__ stub2 (TYPE_3__*,struct omap_overlay_manager_info*) ;
 int stub3 (TYPE_3__*,struct omap_overlay_manager_info*) ;
 scalar_t__ stub4 (TYPE_3__*,struct omap_overlay_manager_info*) ;
 struct omap_vout_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_fbuf(struct file *file, void *fh,
    const struct v4l2_framebuffer *a)
{
 int enable = 0;
 struct omap_overlay *ovl;
 struct omapvideo_info *ovid;
 struct omap_vout_device *vout = video_drvdata(file);
 struct omap_overlay_manager_info info;
 enum omap_dss_trans_key_type key_type = OMAP_DSS_COLOR_KEY_GFX_DST;

 ovid = &vout->vid_info;
 ovl = ovid->overlays[0];



 if ((a->flags & V4L2_FBUF_FLAG_SRC_CHROMAKEY) &&
   (a->flags & V4L2_FBUF_FLAG_CHROMAKEY))
  return -EINVAL;


 if ((a->flags & V4L2_FBUF_FLAG_CHROMAKEY) &&
   (a->flags & V4L2_FBUF_FLAG_LOCAL_ALPHA))
  return -EINVAL;

 if ((a->flags & V4L2_FBUF_FLAG_SRC_CHROMAKEY)) {
  vout->fbuf.flags |= V4L2_FBUF_FLAG_SRC_CHROMAKEY;
  key_type = OMAP_DSS_COLOR_KEY_VID_SRC;
 } else
  vout->fbuf.flags &= ~V4L2_FBUF_FLAG_SRC_CHROMAKEY;

 if ((a->flags & V4L2_FBUF_FLAG_CHROMAKEY)) {
  vout->fbuf.flags |= V4L2_FBUF_FLAG_CHROMAKEY;
  key_type = OMAP_DSS_COLOR_KEY_GFX_DST;
 } else
  vout->fbuf.flags &= ~V4L2_FBUF_FLAG_CHROMAKEY;

 if (a->flags & (V4L2_FBUF_FLAG_CHROMAKEY |
    V4L2_FBUF_FLAG_SRC_CHROMAKEY))
  enable = 1;
 else
  enable = 0;
 if (ovl->manager && ovl->manager->get_manager_info &&
   ovl->manager->set_manager_info) {

  ovl->manager->get_manager_info(ovl->manager, &info);
  info.trans_enabled = enable;
  info.trans_key_type = key_type;
  info.trans_key = vout->win.chromakey;

  if (ovl->manager->set_manager_info(ovl->manager, &info))
   return -EINVAL;
 }
 if (a->flags & V4L2_FBUF_FLAG_LOCAL_ALPHA) {
  vout->fbuf.flags |= V4L2_FBUF_FLAG_LOCAL_ALPHA;
  enable = 1;
 } else {
  vout->fbuf.flags &= ~V4L2_FBUF_FLAG_LOCAL_ALPHA;
  enable = 0;
 }
 if (ovl->manager && ovl->manager->get_manager_info &&
   ovl->manager->set_manager_info) {
  ovl->manager->get_manager_info(ovl->manager, &info);

  if ((ovl->caps & OMAP_DSS_OVL_CAP_ZORDER) == 0)
   info.partial_alpha_enabled = enable;
  if (ovl->manager->set_manager_info(ovl->manager, &info))
   return -EINVAL;
 }

 return 0;
}
