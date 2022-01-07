
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_COMM_CHN ;
 scalar_t__ DSAF_PPE_QID_CFG_0_REG ;
 int DSAF_PPE_QID_CFG_M ;
 int DSAF_PPE_QID_CFG_S ;
 int dsaf_set_dev_field (struct dsaf_device*,scalar_t__,int ,int ,int) ;

__attribute__((used)) static void
hns_dsaf_ppe_qid_cfg(struct dsaf_device *dsaf_dev, u32 qid_cfg)
{
 u32 i;

 for (i = 0; i < DSAF_COMM_CHN; i++) {
  dsaf_set_dev_field(dsaf_dev,
       DSAF_PPE_QID_CFG_0_REG + 0x0004 * i,
       DSAF_PPE_QID_CFG_M, DSAF_PPE_QID_CFG_S,
       qid_cfg);
 }
}
