
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocelot {int dummy; } ;
struct TYPE_2__ {scalar_t__ entry_count; } ;


 int vcap_cmd (struct ocelot*,scalar_t__,int,int) ;
 TYPE_1__ vcap_is2 ;

__attribute__((used)) static void vcap_row_cmd(struct ocelot *oc, u32 row, int cmd, int sel)
{
 vcap_cmd(oc, vcap_is2.entry_count - row - 1, cmd, sel);
}
