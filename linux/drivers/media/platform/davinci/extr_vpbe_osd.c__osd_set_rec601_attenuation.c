
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int vpbe_type; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;




 int OSD_EXTMODE ;
 int OSD_EXTMODE_ATNOSD0EN ;
 int OSD_EXTMODE_ATNOSD1EN ;
 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_ATN0E ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_ATN1E ;
 int VPBE_VERSION_1 ;
 int VPBE_VERSION_2 ;
 int VPBE_VERSION_3 ;
 int osd_modify (struct osd_state*,int ,int ,int ) ;

__attribute__((used)) static void _osd_set_rec601_attenuation(struct osd_state *sd,
     enum osd_win_layer osdwin, int enable)
{
 switch (osdwin) {
 case 129:
  osd_modify(sd, OSD_OSDWIN0MD_ATN0E,
     enable ? OSD_OSDWIN0MD_ATN0E : 0,
     OSD_OSDWIN0MD);
  if (sd->vpbe_type == VPBE_VERSION_1)
   osd_modify(sd, OSD_OSDWIN0MD_ATN0E,
      enable ? OSD_OSDWIN0MD_ATN0E : 0,
      OSD_OSDWIN0MD);
  else if ((sd->vpbe_type == VPBE_VERSION_3) ||
      (sd->vpbe_type == VPBE_VERSION_2))
   osd_modify(sd, OSD_EXTMODE_ATNOSD0EN,
      enable ? OSD_EXTMODE_ATNOSD0EN : 0,
      OSD_EXTMODE);
  break;
 case 128:
  osd_modify(sd, OSD_OSDWIN1MD_ATN1E,
     enable ? OSD_OSDWIN1MD_ATN1E : 0,
     OSD_OSDWIN1MD);
  if (sd->vpbe_type == VPBE_VERSION_1)
   osd_modify(sd, OSD_OSDWIN1MD_ATN1E,
      enable ? OSD_OSDWIN1MD_ATN1E : 0,
      OSD_OSDWIN1MD);
  else if ((sd->vpbe_type == VPBE_VERSION_3) ||
      (sd->vpbe_type == VPBE_VERSION_2))
   osd_modify(sd, OSD_EXTMODE_ATNOSD1EN,
      enable ? OSD_EXTMODE_ATNOSD1EN : 0,
      OSD_EXTMODE);
  break;
 }
}
