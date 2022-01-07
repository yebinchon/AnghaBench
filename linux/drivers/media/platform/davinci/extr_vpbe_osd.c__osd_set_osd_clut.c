
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct osd_state {int dummy; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;
typedef enum osd_clut { ____Placeholder_osd_clut } osd_clut ;




 int OSD_OSDWIN0MD ;
 int OSD_OSDWIN0MD_CLUTS0 ;
 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_CLUTS1 ;
 int RAM_CLUT ;
 int osd_modify (struct osd_state*,int ,int ,int ) ;

__attribute__((used)) static void _osd_set_osd_clut(struct osd_state *sd,
         enum osd_win_layer osdwin,
         enum osd_clut clut)
{
 u32 winmd = 0;

 switch (osdwin) {
 case 129:
  if (clut == RAM_CLUT)
   winmd |= OSD_OSDWIN0MD_CLUTS0;
  osd_modify(sd, OSD_OSDWIN0MD_CLUTS0, winmd, OSD_OSDWIN0MD);
  break;
 case 128:
  if (clut == RAM_CLUT)
   winmd |= OSD_OSDWIN1MD_CLUTS1;
  osd_modify(sd, OSD_OSDWIN1MD_CLUTS1, winmd, OSD_OSDWIN1MD);
  break;
 }
}
