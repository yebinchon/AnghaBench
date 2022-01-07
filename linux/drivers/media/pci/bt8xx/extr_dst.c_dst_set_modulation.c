
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_state {scalar_t__ dst_type; int modulation; int* tx_tuna; int fw_name; } ;
typedef enum fe_modulation { ____Placeholder_fe_modulation } fe_modulation ;


 scalar_t__ DST_TYPE_IS_CABLE ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int dst_set_modulation(struct dst_state *state,
         enum fe_modulation modulation)
{
 if (state->dst_type != DST_TYPE_IS_CABLE)
  return -EOPNOTSUPP;

 state->modulation = modulation;
 switch (modulation) {
 case 135:
  state->tx_tuna[8] = 0x10;
  break;
 case 133:
  state->tx_tuna[8] = 0x20;
  break;
 case 132:
  state->tx_tuna[8] = 0x40;
  break;
 case 136:
  state->tx_tuna[8] = 0x80;
  break;
 case 134:
  if (!strncmp(state->fw_name, "DCTNEW", 6))
   state->tx_tuna[8] = 0xff;
  else if (!strncmp(state->fw_name, "DCT-CI", 6))
   state->tx_tuna[8] = 0x00;
  break;
 case 130:
 case 131:
 case 128:
 case 129:
 default:
  return -EINVAL;

 }

 return 0;
}
