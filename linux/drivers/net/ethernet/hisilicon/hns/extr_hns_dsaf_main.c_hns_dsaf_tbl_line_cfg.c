
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_tbl_line_cfg {int tbl_line_out_port; int tbl_line_dvc; int tbl_line_mac_discard; } ;
struct dsaf_device {int dummy; } ;


 int DSAF_TBL_LINE_CFG_DVC_S ;
 int DSAF_TBL_LINE_CFG_MAC_DISCARD_S ;
 int DSAF_TBL_LINE_CFG_OUT_PORT_M ;
 int DSAF_TBL_LINE_CFG_OUT_PORT_S ;
 int DSAF_TBL_LIN_CFG_0_REG ;
 int dsaf_read_dev (struct dsaf_device*,int ) ;
 int dsaf_set_bit (int ,int ,int ) ;
 int dsaf_set_field (int ,int ,int ,int ) ;
 int dsaf_write_dev (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void hns_dsaf_tbl_line_cfg(struct dsaf_device *dsaf_dev,
      struct dsaf_tbl_line_cfg *tbl_lin)
{
 u32 tbl_line;

 tbl_line = dsaf_read_dev(dsaf_dev, DSAF_TBL_LIN_CFG_0_REG);
 dsaf_set_bit(tbl_line, DSAF_TBL_LINE_CFG_MAC_DISCARD_S,
       tbl_lin->tbl_line_mac_discard);
 dsaf_set_bit(tbl_line, DSAF_TBL_LINE_CFG_DVC_S,
       tbl_lin->tbl_line_dvc);
 dsaf_set_field(tbl_line, DSAF_TBL_LINE_CFG_OUT_PORT_M,
         DSAF_TBL_LINE_CFG_OUT_PORT_S,
         tbl_lin->tbl_line_out_port);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_LIN_CFG_0_REG, tbl_line);
}
