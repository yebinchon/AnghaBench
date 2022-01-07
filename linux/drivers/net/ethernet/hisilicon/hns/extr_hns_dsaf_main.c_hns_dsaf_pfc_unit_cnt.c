
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct dsaf_device {int dummy; } ;
typedef enum dsaf_port_rate_mode { ____Placeholder_dsaf_port_rate_mode } dsaf_port_rate_mode ;


 int DSAF_PFC_UNINT_CNT_M ;
 int DSAF_PFC_UNINT_CNT_S ;
 scalar_t__ DSAF_PFC_UNIT_CNT_0_REG ;



 int HNS_DSAF_PFC_UNIT_CNT_FOR_GE_1000 ;
 int HNS_DSAF_PFC_UNIT_CNT_FOR_XGE ;
 int dsaf_set_dev_field (struct dsaf_device*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void hns_dsaf_pfc_unit_cnt(struct dsaf_device *dsaf_dev, int mac_id,
      enum dsaf_port_rate_mode rate)
{
 u32 unit_cnt;

 switch (rate) {
 case 129:
  unit_cnt = HNS_DSAF_PFC_UNIT_CNT_FOR_XGE;
  break;
 case 130:
  unit_cnt = HNS_DSAF_PFC_UNIT_CNT_FOR_GE_1000;
  break;
 case 128:
  unit_cnt = HNS_DSAF_PFC_UNIT_CNT_FOR_GE_1000;
  break;
 default:
  unit_cnt = HNS_DSAF_PFC_UNIT_CNT_FOR_XGE;
 }

 dsaf_set_dev_field(dsaf_dev,
      (DSAF_PFC_UNIT_CNT_0_REG + 0x4 * (u64)mac_id),
      DSAF_PFC_UNINT_CNT_M, DSAF_PFC_UNINT_CNT_S,
      unit_cnt);
}
