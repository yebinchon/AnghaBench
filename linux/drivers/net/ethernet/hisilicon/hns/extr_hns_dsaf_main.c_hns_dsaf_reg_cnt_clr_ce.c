
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_CNT_CLR_CE_S ;
 int DSAF_DSA_REG_CNT_CLR_CE_REG ;
 int dsaf_set_dev_bit (struct dsaf_device*,int ,int ,int ) ;

__attribute__((used)) static void
hns_dsaf_reg_cnt_clr_ce(struct dsaf_device *dsaf_dev, u32 reg_cnt_clr_ce)
{
 dsaf_set_dev_bit(dsaf_dev, DSAF_DSA_REG_CNT_CLR_CE_REG,
    DSAF_CNT_CLR_CE_S, reg_cnt_clr_ce);
}
