
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;




 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_TE0 ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_TE1 ;
 int osd_clear (struct osd_state*,int ,int ) ;

__attribute__((used)) static void _osd_disable_color_key(struct osd_state *sd,
       enum osd_win_layer osdwin)
{
 switch (osdwin) {
 case 129:
  osd_clear(sd, OSD_OSDWIN0MD_TE0, OSD_OSDWIN0MD);
  break;
 case 128:
  osd_clear(sd, OSD_OSDWIN1MD_TE1, OSD_OSDWIN1MD);
  break;
 }
}
