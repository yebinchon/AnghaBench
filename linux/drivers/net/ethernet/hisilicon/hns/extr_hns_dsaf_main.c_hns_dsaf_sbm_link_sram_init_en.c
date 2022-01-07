
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dummy; } ;


 int DSAF_CFG_0_REG ;
 int DSAF_CFG_SBM_INIT_S ;
 int dsaf_set_dev_bit (struct dsaf_device*,int ,int ,int) ;

__attribute__((used)) static void hns_dsaf_sbm_link_sram_init_en(struct dsaf_device *dsaf_dev)
{
 dsaf_set_dev_bit(dsaf_dev, DSAF_CFG_0_REG, DSAF_CFG_SBM_INIT_S, 1);
}
