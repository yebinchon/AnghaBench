
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_TBL_PUL_0_REG ;
 int DSAF_TBL_PUL_LINE_VLD_S ;
 int dsaf_read_dev (struct dsaf_device*,int ) ;
 int dsaf_set_bit (int ,int ,int) ;
 int dsaf_write_dev (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void hns_dsaf_tbl_line_pul(struct dsaf_device *dsaf_dev)
{
 u32 tbl_pul;

 tbl_pul = dsaf_read_dev(dsaf_dev, DSAF_TBL_PUL_0_REG);
 dsaf_set_bit(tbl_pul, DSAF_TBL_PUL_LINE_VLD_S, 1);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_PUL_0_REG, tbl_pul);
 dsaf_set_bit(tbl_pul, DSAF_TBL_PUL_LINE_VLD_S, 0);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_PUL_0_REG, tbl_pul);
}
