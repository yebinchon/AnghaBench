
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcap_data {int dummy; } ;
typedef enum ocelot_ace_action { ____Placeholder_ocelot_ace_action } ocelot_ace_action ;


 int CPU_COPY_ENA ;
 int CPU_QU_NUM ;
 int MASK_MODE ;


 int OCELOT_POLICER_DISCARD ;
 int POLICE_ENA ;
 int POLICE_IDX ;
 int PORT_MASK ;
 int VCAP_ACT_SET (int ,int) ;

__attribute__((used)) static void is2_action_set(struct vcap_data *data,
      enum ocelot_ace_action action)
{
 switch (action) {
 case 129:
  VCAP_ACT_SET(PORT_MASK, 0x0);
  VCAP_ACT_SET(MASK_MODE, 0x1);
  VCAP_ACT_SET(POLICE_ENA, 0x1);
  VCAP_ACT_SET(POLICE_IDX, OCELOT_POLICER_DISCARD);
  VCAP_ACT_SET(CPU_QU_NUM, 0x0);
  VCAP_ACT_SET(CPU_COPY_ENA, 0x0);
  break;
 case 128:
  VCAP_ACT_SET(PORT_MASK, 0x0);
  VCAP_ACT_SET(MASK_MODE, 0x1);
  VCAP_ACT_SET(POLICE_ENA, 0x0);
  VCAP_ACT_SET(POLICE_IDX, 0x0);
  VCAP_ACT_SET(CPU_QU_NUM, 0x0);
  VCAP_ACT_SET(CPU_COPY_ENA, 0x1);
  break;
 }
}
