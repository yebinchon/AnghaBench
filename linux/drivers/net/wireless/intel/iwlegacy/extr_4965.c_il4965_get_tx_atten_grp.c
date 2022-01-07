
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int s32 ;


 int CALIB_CH_GROUP_1 ;
 int CALIB_CH_GROUP_2 ;
 int CALIB_CH_GROUP_3 ;
 int CALIB_CH_GROUP_4 ;
 int CALIB_CH_GROUP_5 ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR1_FCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR1_LCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR2_FCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR2_LCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR3_FCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR3_LCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR4_FCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR4_LCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR5_FCH ;
 scalar_t__ CALIB_IL_TX_ATTEN_GR5_LCH ;
 int EINVAL ;

__attribute__((used)) static s32
il4965_get_tx_atten_grp(u16 channel)
{
 if (channel >= CALIB_IL_TX_ATTEN_GR5_FCH &&
     channel <= CALIB_IL_TX_ATTEN_GR5_LCH)
  return CALIB_CH_GROUP_5;

 if (channel >= CALIB_IL_TX_ATTEN_GR1_FCH &&
     channel <= CALIB_IL_TX_ATTEN_GR1_LCH)
  return CALIB_CH_GROUP_1;

 if (channel >= CALIB_IL_TX_ATTEN_GR2_FCH &&
     channel <= CALIB_IL_TX_ATTEN_GR2_LCH)
  return CALIB_CH_GROUP_2;

 if (channel >= CALIB_IL_TX_ATTEN_GR3_FCH &&
     channel <= CALIB_IL_TX_ATTEN_GR3_LCH)
  return CALIB_CH_GROUP_3;

 if (channel >= CALIB_IL_TX_ATTEN_GR4_FCH &&
     channel <= CALIB_IL_TX_ATTEN_GR4_LCH)
  return CALIB_CH_GROUP_4;

 return -EINVAL;
}
