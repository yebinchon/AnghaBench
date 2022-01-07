
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocelot {int dummy; } ;


 int S2_CORE_UPDATE_CTRL ;
 int ocelot_read (struct ocelot*,int ) ;

__attribute__((used)) static u32 vcap_s2_read_update_ctrl(struct ocelot *oc)
{
 return ocelot_read(oc, S2_CORE_UPDATE_CTRL);
}
