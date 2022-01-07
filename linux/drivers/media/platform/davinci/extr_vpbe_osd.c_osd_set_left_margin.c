
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct osd_state {int dummy; } ;


 int OSD_BASEPX ;
 int osd_write (struct osd_state*,int ,int ) ;

__attribute__((used)) static void osd_set_left_margin(struct osd_state *sd, u32 val)
{
 osd_write(sd, val, OSD_BASEPX);
}
