
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;


 int OSD_MODE ;
 unsigned int OSD_MODE_FSINV ;
 int osd_modify (struct osd_state*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void _osd_set_field_inversion(struct osd_state *sd, int enable)
{
 unsigned fsinv = 0;

 if (enable)
  fsinv = OSD_MODE_FSINV;

 osd_modify(sd, OSD_MODE_FSINV, fsinv, OSD_MODE);
}
