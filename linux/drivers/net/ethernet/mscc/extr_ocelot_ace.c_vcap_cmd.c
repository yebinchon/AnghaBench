
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct ocelot {int dummy; } ;
struct TYPE_2__ {scalar_t__ entry_count; } ;


 int S2_CORE_UPDATE_CTRL ;
 int S2_CORE_UPDATE_CTRL_UPDATE_ACTION_DIS ;
 int S2_CORE_UPDATE_CTRL_UPDATE_ADDR (scalar_t__) ;
 int S2_CORE_UPDATE_CTRL_UPDATE_CMD (int) ;
 int S2_CORE_UPDATE_CTRL_UPDATE_CNT_DIS ;
 int S2_CORE_UPDATE_CTRL_UPDATE_ENTRY_DIS ;
 int S2_CORE_UPDATE_CTRL_UPDATE_SHOT ;
 int VCAP_SEL_ACTION ;
 int VCAP_SEL_COUNTER ;
 int VCAP_SEL_ENTRY ;
 int ocelot_write (struct ocelot*,int,int ) ;
 int readx_poll_timeout (int ,struct ocelot*,int,int,int,int) ;
 TYPE_1__ vcap_is2 ;
 int vcap_s2_read_update_ctrl ;

__attribute__((used)) static void vcap_cmd(struct ocelot *oc, u16 ix, int cmd, int sel)
{
 u32 value = (S2_CORE_UPDATE_CTRL_UPDATE_CMD(cmd) |
       S2_CORE_UPDATE_CTRL_UPDATE_ADDR(ix) |
       S2_CORE_UPDATE_CTRL_UPDATE_SHOT);

 if ((sel & VCAP_SEL_ENTRY) && ix >= vcap_is2.entry_count)
  return;

 if (!(sel & VCAP_SEL_ENTRY))
  value |= S2_CORE_UPDATE_CTRL_UPDATE_ENTRY_DIS;

 if (!(sel & VCAP_SEL_ACTION))
  value |= S2_CORE_UPDATE_CTRL_UPDATE_ACTION_DIS;

 if (!(sel & VCAP_SEL_COUNTER))
  value |= S2_CORE_UPDATE_CTRL_UPDATE_CNT_DIS;

 ocelot_write(oc, value, S2_CORE_UPDATE_CTRL);
 readx_poll_timeout(vcap_s2_read_update_ctrl, oc, value,
    (value & S2_CORE_UPDATE_CTRL_UPDATE_SHOT) == 0,
    10, 100000);
}
