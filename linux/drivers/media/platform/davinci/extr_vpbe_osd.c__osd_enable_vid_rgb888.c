
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {scalar_t__ vpbe_type; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int OSD_MISCCTL ;
 int OSD_MISCCTL_RGBEN ;
 int OSD_MISCCTL_RGBWIN ;
 scalar_t__ VPBE_VERSION_1 ;
 int WIN_VID0 ;
 int WIN_VID1 ;
 int osd_modify (struct osd_state*,int,int,int ) ;

__attribute__((used)) static void _osd_enable_vid_rgb888(struct osd_state *sd,
       enum osd_layer layer)
{







 if (sd->vpbe_type == VPBE_VERSION_1) {
  if (layer == WIN_VID0)
   osd_modify(sd, OSD_MISCCTL_RGBEN | OSD_MISCCTL_RGBWIN,
      OSD_MISCCTL_RGBEN, OSD_MISCCTL);
  else if (layer == WIN_VID1)
   osd_modify(sd, OSD_MISCCTL_RGBEN | OSD_MISCCTL_RGBWIN,
      OSD_MISCCTL_RGBEN | OSD_MISCCTL_RGBWIN,
      OSD_MISCCTL);
 }
}
