
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_VOQ_BP_ALL_DOWNTHRD_M ;
 int DSAF_VOQ_BP_ALL_DOWNTHRD_S ;
 scalar_t__ DSAF_VOQ_BP_ALL_THRD_0_REG ;
 int DSAF_VOQ_BP_ALL_UPTHRD_M ;
 int DSAF_VOQ_BP_ALL_UPTHRD_S ;
 int DSAF_VOQ_NUM ;
 int DSAF_XGE_NUM ;
 int dsaf_read_dev (struct dsaf_device*,scalar_t__) ;
 int dsaf_set_field (int,int ,int ,int) ;
 int dsaf_write_dev (struct dsaf_device*,scalar_t__,int) ;

__attribute__((used)) static void hns_dsaf_voq_bp_all_thrd_cfg(struct dsaf_device *dsaf_dev)
{
 u32 voq_bp_all_thrd;
 u32 i;

 for (i = 0; i < DSAF_VOQ_NUM; i++) {
  voq_bp_all_thrd = dsaf_read_dev(
   dsaf_dev, DSAF_VOQ_BP_ALL_THRD_0_REG + 0x40 * i);
  if (i < DSAF_XGE_NUM) {
   dsaf_set_field(voq_bp_all_thrd,
           DSAF_VOQ_BP_ALL_DOWNTHRD_M,
           DSAF_VOQ_BP_ALL_DOWNTHRD_S, 930);
   dsaf_set_field(voq_bp_all_thrd,
           DSAF_VOQ_BP_ALL_UPTHRD_M,
           DSAF_VOQ_BP_ALL_UPTHRD_S, 950);
  } else {
   dsaf_set_field(voq_bp_all_thrd,
           DSAF_VOQ_BP_ALL_DOWNTHRD_M,
           DSAF_VOQ_BP_ALL_DOWNTHRD_S, 220);
   dsaf_set_field(voq_bp_all_thrd,
           DSAF_VOQ_BP_ALL_UPTHRD_M,
           DSAF_VOQ_BP_ALL_UPTHRD_S, 230);
  }
  dsaf_write_dev(
   dsaf_dev, DSAF_VOQ_BP_ALL_THRD_0_REG + 0x40 * i,
   voq_bp_all_thrd);
 }
}
