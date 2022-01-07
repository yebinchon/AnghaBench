
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {scalar_t__ vpbe_type; } ;


 int OSD_MISCCTL ;
 int OSD_MISCCTL_RGBEN ;
 scalar_t__ VPBE_VERSION_1 ;
 int osd_clear (struct osd_state*,int ,int ) ;

__attribute__((used)) static void _osd_disable_vid_rgb888(struct osd_state *sd)
{






 if (sd->vpbe_type == VPBE_VERSION_1)
  osd_clear(sd, OSD_MISCCTL_RGBEN, OSD_MISCCTL);
}
