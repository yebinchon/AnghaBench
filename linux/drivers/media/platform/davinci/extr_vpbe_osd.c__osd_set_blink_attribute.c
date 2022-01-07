
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct osd_state {int dummy; } ;
typedef enum osd_blink_interval { ____Placeholder_osd_blink_interval } osd_blink_interval ;


 int OSD_OSDATRMD ;
 int OSD_OSDATRMD_BLNK ;
 int OSD_OSDATRMD_BLNKINT ;
 int OSD_OSDATRMD_BLNKINT_SHIFT ;
 int osd_modify (struct osd_state*,int,int,int ) ;

__attribute__((used)) static void _osd_set_blink_attribute(struct osd_state *sd, int enable,
         enum osd_blink_interval blink)
{
 u32 osdatrmd = 0;

 if (enable) {
  osdatrmd |= OSD_OSDATRMD_BLNK;
  osdatrmd |= blink << OSD_OSDATRMD_BLNKINT_SHIFT;
 }

 osd_modify(sd, OSD_OSDATRMD_BLNKINT | OSD_OSDATRMD_BLNK, osdatrmd,
    OSD_OSDATRMD);
}
