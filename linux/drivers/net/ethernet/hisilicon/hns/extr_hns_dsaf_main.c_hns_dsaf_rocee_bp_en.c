
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dsaf_ver; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int DSAF_FC_XGE_TX_PAUSE_S ;
 int DSAF_XGE_CTRL_SIG_CFG_0_REG ;
 int dsaf_set_dev_bit (struct dsaf_device*,int ,int ,int) ;

__attribute__((used)) static void hns_dsaf_rocee_bp_en(struct dsaf_device *dsaf_dev)
{
 if (AE_IS_VER1(dsaf_dev->dsaf_ver))
  dsaf_set_dev_bit(dsaf_dev, DSAF_XGE_CTRL_SIG_CFG_0_REG,
     DSAF_FC_XGE_TX_PAUSE_S, 1);
}
