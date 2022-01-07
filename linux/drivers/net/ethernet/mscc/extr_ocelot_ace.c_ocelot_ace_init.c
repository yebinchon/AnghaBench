
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcap_data {int dummy; } ;
struct ocelot {int dummy; } ;
typedef int data ;
struct TYPE_2__ {int action_count; int entry_count; } ;


 int ANA_POL_CIR_CFG ;
 int ANA_POL_CIR_STATE ;
 int ANA_POL_MODE_CFG ;
 int ANA_POL_PIR_CFG ;
 int ANA_POL_PIR_STATE ;
 int OCELOT_POLICER_DISCARD ;
 int S2_CORE_MV_CFG ;
 int VCAP_CMD_INITIALIZE ;
 int VCAP_SEL_ACTION ;
 int VCAP_SEL_COUNTER ;
 int VCAP_SEL_ENTRY ;
 int acl_block ;
 int memset (struct vcap_data*,int ,int) ;
 int ocelot_acl_block_create (struct ocelot*) ;
 int ocelot_write (struct ocelot*,int ,int ) ;
 int ocelot_write_gix (struct ocelot*,int,int ,int ) ;
 int vcap_action2cache (struct ocelot*,struct vcap_data*) ;
 int vcap_cmd (struct ocelot*,int ,int ,int) ;
 int vcap_entry2cache (struct ocelot*,struct vcap_data*) ;
 TYPE_1__ vcap_is2 ;

int ocelot_ace_init(struct ocelot *ocelot)
{
 struct vcap_data data;

 memset(&data, 0, sizeof(data));
 vcap_entry2cache(ocelot, &data);
 ocelot_write(ocelot, vcap_is2.entry_count, S2_CORE_MV_CFG);
 vcap_cmd(ocelot, 0, VCAP_CMD_INITIALIZE, VCAP_SEL_ENTRY);

 vcap_action2cache(ocelot, &data);
 ocelot_write(ocelot, vcap_is2.action_count, S2_CORE_MV_CFG);
 vcap_cmd(ocelot, 0, VCAP_CMD_INITIALIZE,
   VCAP_SEL_ACTION | VCAP_SEL_COUNTER);





 ocelot_write_gix(ocelot, 0x299, ANA_POL_MODE_CFG,
    OCELOT_POLICER_DISCARD);
 ocelot_write_gix(ocelot, 0x1, ANA_POL_PIR_CFG,
    OCELOT_POLICER_DISCARD);
 ocelot_write_gix(ocelot, 0x3fffff, ANA_POL_PIR_STATE,
    OCELOT_POLICER_DISCARD);
 ocelot_write_gix(ocelot, 0x0, ANA_POL_CIR_CFG,
    OCELOT_POLICER_DISCARD);
 ocelot_write_gix(ocelot, 0x3fffff, ANA_POL_CIR_STATE,
    OCELOT_POLICER_DISCARD);

 acl_block = ocelot_acl_block_create(ocelot);

 return 0;
}
