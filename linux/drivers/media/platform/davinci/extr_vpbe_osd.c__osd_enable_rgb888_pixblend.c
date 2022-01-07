
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
typedef enum osd_win_layer { ____Placeholder_osd_win_layer } osd_win_layer ;




 int OSD_EXTMODE ;
 int OSD_EXTMODE_OSD0BLDCHR ;
 int OSD_EXTMODE_OSD1BLDCHR ;
 int OSD_MISCCTL ;
 int OSD_MISCCTL_BLDSEL ;
 int osd_modify (struct osd_state*,int ,int ,int ) ;

__attribute__((used)) static void _osd_enable_rgb888_pixblend(struct osd_state *sd,
     enum osd_win_layer osdwin)
{

 osd_modify(sd, OSD_MISCCTL_BLDSEL, 0, OSD_MISCCTL);
 switch (osdwin) {
 case 129:
  osd_modify(sd, OSD_EXTMODE_OSD0BLDCHR,
     OSD_EXTMODE_OSD0BLDCHR, OSD_EXTMODE);
  break;
 case 128:
  osd_modify(sd, OSD_EXTMODE_OSD1BLDCHR,
     OSD_EXTMODE_OSD1BLDCHR, OSD_EXTMODE);
  break;
 }
}
