
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {scalar_t__ vpbe_type; } ;


 int OSD_EXTMODE ;
 int OSD_MISCCTL ;
 int OSD_MISCCTL_DMANG ;
 int OSD_MODE ;
 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN1MD ;
 int OSD_RECTCUR ;
 int OSD_VBNDRY ;
 int OSD_VIDWINMD ;
 scalar_t__ VPBE_VERSION_3 ;
 int osd_write (struct osd_state*,int ,int ) ;

__attribute__((used)) static void _osd_init(struct osd_state *sd)
{
 osd_write(sd, 0, OSD_MODE);
 osd_write(sd, 0, OSD_VIDWINMD);
 osd_write(sd, 0, OSD_OSDWIN0MD);
 osd_write(sd, 0, OSD_OSDWIN1MD);
 osd_write(sd, 0, OSD_RECTCUR);
 osd_write(sd, 0, OSD_MISCCTL);
 if (sd->vpbe_type == VPBE_VERSION_3) {
  osd_write(sd, 0, OSD_VBNDRY);
  osd_write(sd, 0, OSD_EXTMODE);
  osd_write(sd, OSD_MISCCTL_DMANG, OSD_MISCCTL);
 }
}
