
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_tbl_tcam_data {int tbl_tcam_data_high; int tbl_tcam_data_low; } ;
struct dsaf_device {int dummy; } ;


 int DSAF_TBL_TCAM_MATCH_CFG_H_REG ;
 int DSAF_TBL_TCAM_MATCH_CFG_L_REG ;
 int dsaf_write_dev (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void hns_dsaf_tbl_tcam_match_cfg(
 struct dsaf_device *dsaf_dev,
 struct dsaf_tbl_tcam_data *ptbl_tcam_data)
{
 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_MATCH_CFG_L_REG,
         ptbl_tcam_data->tbl_tcam_data_low);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_MATCH_CFG_H_REG,
         ptbl_tcam_data->tbl_tcam_data_high);
}
