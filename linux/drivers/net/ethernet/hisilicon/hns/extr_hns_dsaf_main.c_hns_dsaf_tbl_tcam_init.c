
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsaf_tbl_tcam_ucast_cfg {int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct dsaf_tbl_tcam_data {int member_1; int member_0; } ;
struct dsaf_device {int dummy; } ;


 scalar_t__ DSAF_TCAM_SUM ;
 int hns_dsaf_tcam_uc_cfg (struct dsaf_device*,scalar_t__,struct dsaf_tbl_tcam_data*,struct dsaf_tbl_tcam_ucast_cfg*) ;

__attribute__((used)) static void hns_dsaf_tbl_tcam_init(struct dsaf_device *dsaf_dev)
{
 u32 i;
 struct dsaf_tbl_tcam_data tcam_data[] = {{0, 0} };
 struct dsaf_tbl_tcam_ucast_cfg tcam_ucast[] = {{0, 0, 0, 0, 0} };


 for (i = 0; i < DSAF_TCAM_SUM; i++)
  hns_dsaf_tcam_uc_cfg(dsaf_dev, i, tcam_data, tcam_ucast);
}
