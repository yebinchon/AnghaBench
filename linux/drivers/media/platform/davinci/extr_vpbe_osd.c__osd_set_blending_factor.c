
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;
typedef enum osd_blending_factor { ____Placeholder_osd_blending_factor } osd_blending_factor ;




 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_BLND0 ;
 int OSD_OSDWIN0MD_BLND0_SHIFT ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_BLND1 ;
 int OSD_OSDWIN1MD_BLND1_SHIFT ;
 int osd_modify (struct osd_state*,int ,int,int ) ;

__attribute__((used)) static void _osd_set_blending_factor(struct osd_state *sd,
         enum osd_win_layer osdwin,
         enum osd_blending_factor blend)
{
 switch (osdwin) {
 case 129:
  osd_modify(sd, OSD_OSDWIN0MD_BLND0,
     blend << OSD_OSDWIN0MD_BLND0_SHIFT, OSD_OSDWIN0MD);
  break;
 case 128:
  osd_modify(sd, OSD_OSDWIN1MD_BLND1,
     blend << OSD_OSDWIN1MD_BLND1_SHIFT, OSD_OSDWIN1MD);
  break;
 }
}
