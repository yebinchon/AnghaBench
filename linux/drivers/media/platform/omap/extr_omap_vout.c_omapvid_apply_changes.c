
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapvideo_info {int num_overlays; struct omap_overlay** overlays; } ;
struct omap_vout_device {struct omapvideo_info vid_info; } ;
struct omap_overlay {TYPE_1__* manager; struct omap_dss_device* (* get_device ) (struct omap_overlay*) ;} ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int (* apply ) (TYPE_1__*) ;} ;


 int EINVAL ;
 struct omap_dss_device* stub1 (struct omap_overlay*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static int omapvid_apply_changes(struct omap_vout_device *vout)
{
 int i;
 struct omap_overlay *ovl;
 struct omapvideo_info *ovid = &vout->vid_info;

 for (i = 0; i < ovid->num_overlays; i++) {
  struct omap_dss_device *dssdev;

  ovl = ovid->overlays[i];
  dssdev = ovl->get_device(ovl);
  if (!dssdev)
   return -EINVAL;
  ovl->manager->apply(ovl->manager);
 }

 return 0;
}
