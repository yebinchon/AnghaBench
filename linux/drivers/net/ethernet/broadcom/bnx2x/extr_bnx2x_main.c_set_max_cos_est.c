
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BNX2X_MULTI_TX_COS_E1X ;
 int BNX2X_MULTI_TX_COS_E2_E3A0 ;
 int BNX2X_MULTI_TX_COS_E3B0 ;
 int ENODEV ;
 int pr_err (char*,int) ;

__attribute__((used)) static int set_max_cos_est(int chip_id)
{
 switch (chip_id) {
 case 148:
 case 147:
 case 146:
  return BNX2X_MULTI_TX_COS_E1X;
 case 145:
 case 144:
  return BNX2X_MULTI_TX_COS_E2_E3A0;
 case 142:
 case 141:
 case 139:
 case 138:
 case 132:
 case 133:
 case 129:
 case 130:
 case 131:
 case 136:
 case 135:
  return BNX2X_MULTI_TX_COS_E3B0;
 case 143:
 case 140:
 case 137:
 case 128:
 case 134:
  return 1;
 default:
  pr_err("Unknown board_type (%d), aborting\n", chip_id);
  return -ENODEV;
 }
}
