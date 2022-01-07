
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;


 int OSD_OSDWIN1MD ;
 int OSD_OSDWIN1MD_OASW ;
 int osd_set (struct osd_state*,int ,int ) ;

__attribute__((used)) static void _osd_enable_attribute_mode(struct osd_state *sd)
{

 osd_set(sd, OSD_OSDWIN1MD_OASW, OSD_OSDWIN1MD);
}
