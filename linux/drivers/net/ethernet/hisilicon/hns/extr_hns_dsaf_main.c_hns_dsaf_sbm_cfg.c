
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_SBM_CFG_EN_S ;
 scalar_t__ DSAF_SBM_CFG_REG_0_REG ;
 int DSAF_SBM_CFG_SHCUT_EN_S ;
 int HNS_DSAF_SBM_NUM (struct dsaf_device*) ;
 int dsaf_read_dev (struct dsaf_device*,scalar_t__) ;
 int dsaf_set_bit (int,int ,int) ;
 int dsaf_write_dev (struct dsaf_device*,scalar_t__,int) ;

__attribute__((used)) static void hns_dsaf_sbm_cfg(struct dsaf_device *dsaf_dev)
{
 u32 o_sbm_cfg;
 u32 i;

 for (i = 0; i < HNS_DSAF_SBM_NUM(dsaf_dev); i++) {
  o_sbm_cfg = dsaf_read_dev(dsaf_dev,
       DSAF_SBM_CFG_REG_0_REG + 0x80 * i);
  dsaf_set_bit(o_sbm_cfg, DSAF_SBM_CFG_EN_S, 1);
  dsaf_set_bit(o_sbm_cfg, DSAF_SBM_CFG_SHCUT_EN_S, 0);
  dsaf_write_dev(dsaf_dev,
          DSAF_SBM_CFG_REG_0_REG + 0x80 * i, o_sbm_cfg);
 }
}
