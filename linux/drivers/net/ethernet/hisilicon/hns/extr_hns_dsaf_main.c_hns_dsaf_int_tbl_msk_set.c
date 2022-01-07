
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_TBL_INT_MSK_0_REG ;
 int dsaf_write_dev (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void
hns_dsaf_int_tbl_msk_set(struct dsaf_device *dsaf_dev, u32 msk_set)
{
 dsaf_write_dev(dsaf_dev, DSAF_TBL_INT_MSK_0_REG, msk_set);
}
