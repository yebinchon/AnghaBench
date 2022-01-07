
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dsaf_tbl_line_cfg {int member_0; int member_2; int member_1; } ;
struct dsaf_device {int dummy; } ;


 scalar_t__ DSAF_LINE_SUM ;
 int hns_dsaf_single_line_tbl_cfg (struct dsaf_device*,scalar_t__,struct dsaf_tbl_line_cfg*) ;

__attribute__((used)) static void hns_dsaf_tbl_line_init(struct dsaf_device *dsaf_dev)
{
 u32 i;

 struct dsaf_tbl_line_cfg tbl_line[] = {{1, 0, 0} };

 for (i = 0; i < DSAF_LINE_SUM; i++)
  hns_dsaf_single_line_tbl_cfg(dsaf_dev, i, tbl_line);
}
