
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct osd_state {int dummy; } ;
typedef enum osd_zoom_factor { ____Placeholder_osd_zoom_factor } osd_zoom_factor ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_OHZ0 ;
 int OSD_OSDWIN0MD_OHZ0_SHIFT ;
 int OSD_OSDWIN0MD_OVZ0 ;
 int OSD_OSDWIN0MD_OVZ0_SHIFT ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_OHZ1 ;
 int OSD_OSDWIN1MD_OHZ1_SHIFT ;
 int OSD_OSDWIN1MD_OVZ1 ;
 int OSD_OSDWIN1MD_OVZ1_SHIFT ;
 int OSD_VIDWINMD ;
 int OSD_VIDWINMD_VHZ0 ;
 int OSD_VIDWINMD_VHZ0_SHIFT ;
 int OSD_VIDWINMD_VHZ1 ;
 int OSD_VIDWINMD_VHZ1_SHIFT ;
 int OSD_VIDWINMD_VVZ0 ;
 int OSD_VIDWINMD_VVZ0_SHIFT ;
 int OSD_VIDWINMD_VVZ1 ;
 int OSD_VIDWINMD_VVZ1_SHIFT ;




 int osd_modify (struct osd_state*,int,int,int ) ;

__attribute__((used)) static void _osd_set_zoom(struct osd_state *sd, enum osd_layer layer,
     enum osd_zoom_factor h_zoom,
     enum osd_zoom_factor v_zoom)
{
 u32 winmd = 0;

 switch (layer) {
 case 131:
  winmd |= (h_zoom << OSD_OSDWIN0MD_OHZ0_SHIFT);
  winmd |= (v_zoom << OSD_OSDWIN0MD_OVZ0_SHIFT);
  osd_modify(sd, OSD_OSDWIN0MD_OHZ0 | OSD_OSDWIN0MD_OVZ0, winmd,
     OSD_OSDWIN0MD);
  break;
 case 129:
  winmd |= (h_zoom << OSD_VIDWINMD_VHZ0_SHIFT);
  winmd |= (v_zoom << OSD_VIDWINMD_VVZ0_SHIFT);
  osd_modify(sd, OSD_VIDWINMD_VHZ0 | OSD_VIDWINMD_VVZ0, winmd,
     OSD_VIDWINMD);
  break;
 case 130:
  winmd |= (h_zoom << OSD_OSDWIN1MD_OHZ1_SHIFT);
  winmd |= (v_zoom << OSD_OSDWIN1MD_OVZ1_SHIFT);
  osd_modify(sd, OSD_OSDWIN1MD_OHZ1 | OSD_OSDWIN1MD_OVZ1, winmd,
     OSD_OSDWIN1MD);
  break;
 case 128:
  winmd |= (h_zoom << OSD_VIDWINMD_VHZ1_SHIFT);
  winmd |= (v_zoom << OSD_VIDWINMD_VVZ1_SHIFT);
  osd_modify(sd, OSD_VIDWINMD_VHZ1 | OSD_VIDWINMD_VVZ1, winmd,
     OSD_VIDWINMD);
  break;
 }
}
