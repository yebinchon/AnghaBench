
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_TBL_DFX_BC_LKUP_NUM_EN_S ;
 int DSAF_TBL_DFX_CTRL_0_REG ;
 int DSAF_TBL_DFX_LINE_LKUP_NUM_EN_S ;
 int DSAF_TBL_DFX_MC_LKUP_NUM_EN_S ;
 int DSAF_TBL_DFX_UC_LKUP_NUM_EN_S ;
 int dsaf_read_dev (struct dsaf_device*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void hns_dsaf_tbl_stat_en(struct dsaf_device *dsaf_dev)
{
 u32 o_tbl_ctrl;

 o_tbl_ctrl = dsaf_read_dev(dsaf_dev, DSAF_TBL_DFX_CTRL_0_REG);
 dsaf_set_bit(o_tbl_ctrl, DSAF_TBL_DFX_LINE_LKUP_NUM_EN_S, 1);
 dsaf_set_bit(o_tbl_ctrl, DSAF_TBL_DFX_UC_LKUP_NUM_EN_S, 1);
 dsaf_set_bit(o_tbl_ctrl, DSAF_TBL_DFX_MC_LKUP_NUM_EN_S, 1);
 dsaf_set_bit(o_tbl_ctrl, DSAF_TBL_DFX_BC_LKUP_NUM_EN_S, 1);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_DFX_CTRL_0_REG, o_tbl_ctrl);
}
