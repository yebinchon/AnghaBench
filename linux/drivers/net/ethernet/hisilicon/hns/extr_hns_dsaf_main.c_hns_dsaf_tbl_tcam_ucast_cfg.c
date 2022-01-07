
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_tbl_tcam_ucast_cfg {int tbl_ucast_out_port; int tbl_ucast_dvc; int tbl_ucast_old_en; int tbl_ucast_item_vld; int tbl_ucast_mac_discard; } ;
struct dsaf_device {int dummy; } ;


 int DSAF_TBL_TCAM_UCAST_CFG_0_REG ;
 int DSAF_TBL_UCAST_CFG1_DVC_S ;
 int DSAF_TBL_UCAST_CFG1_ITEM_VLD_S ;
 int DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S ;
 int DSAF_TBL_UCAST_CFG1_OLD_EN_S ;
 int DSAF_TBL_UCAST_CFG1_OUT_PORT_M ;
 int DSAF_TBL_UCAST_CFG1_OUT_PORT_S ;
 int dsaf_read_dev (struct dsaf_device*,int ) ;
 int dsaf_set_bit (int ,int ,int ) ;
 int dsaf_set_field (int ,int ,int ,int ) ;
 int dsaf_write_dev (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void hns_dsaf_tbl_tcam_ucast_cfg(
 struct dsaf_device *dsaf_dev,
 struct dsaf_tbl_tcam_ucast_cfg *tbl_tcam_ucast)
{
 u32 ucast_cfg1;

 ucast_cfg1 = dsaf_read_dev(dsaf_dev, DSAF_TBL_TCAM_UCAST_CFG_0_REG);
 dsaf_set_bit(ucast_cfg1, DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S,
       tbl_tcam_ucast->tbl_ucast_mac_discard);
 dsaf_set_bit(ucast_cfg1, DSAF_TBL_UCAST_CFG1_ITEM_VLD_S,
       tbl_tcam_ucast->tbl_ucast_item_vld);
 dsaf_set_bit(ucast_cfg1, DSAF_TBL_UCAST_CFG1_OLD_EN_S,
       tbl_tcam_ucast->tbl_ucast_old_en);
 dsaf_set_bit(ucast_cfg1, DSAF_TBL_UCAST_CFG1_DVC_S,
       tbl_tcam_ucast->tbl_ucast_dvc);
 dsaf_set_field(ucast_cfg1, DSAF_TBL_UCAST_CFG1_OUT_PORT_M,
         DSAF_TBL_UCAST_CFG1_OUT_PORT_S,
         tbl_tcam_ucast->tbl_ucast_out_port);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_UCAST_CFG_0_REG, ucast_cfg1);
}
