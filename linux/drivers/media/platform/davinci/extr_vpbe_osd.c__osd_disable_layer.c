
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
typedef enum osd_layer { ____Placeholder_osd_layer } osd_layer ;


 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_OACT0 ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_OACT1 ;
 int OSD_OSDWIN1MD_OASW ;
 int OSD_VIDWINMD ;
 int OSD_VIDWINMD_ACT0 ;
 int OSD_VIDWINMD_ACT1 ;




 int osd_clear (struct osd_state*,int,int ) ;

__attribute__((used)) static void _osd_disable_layer(struct osd_state *sd, enum osd_layer layer)
{
 switch (layer) {
 case 131:
  osd_clear(sd, OSD_OSDWIN0MD_OACT0, OSD_OSDWIN0MD);
  break;
 case 129:
  osd_clear(sd, OSD_VIDWINMD_ACT0, OSD_VIDWINMD);
  break;
 case 130:

  osd_clear(sd, OSD_OSDWIN1MD_OASW | OSD_OSDWIN1MD_OACT1,
     OSD_OSDWIN1MD);
  break;
 case 128:
  osd_clear(sd, OSD_VIDWINMD_ACT1, OSD_VIDWINMD);
  break;
 }
}
