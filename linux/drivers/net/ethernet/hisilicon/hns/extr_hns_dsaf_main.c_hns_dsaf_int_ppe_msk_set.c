
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 scalar_t__ DSAF_PPE_INT_MSK_0_REG ;
 int dsaf_write_dev (struct dsaf_device*,scalar_t__,int) ;

__attribute__((used)) static void hns_dsaf_int_ppe_msk_set(struct dsaf_device *dsaf_dev,
         u32 chnn_num, u32 msk_set)
{
 dsaf_write_dev(dsaf_dev,
         DSAF_PPE_INT_MSK_0_REG + 0x4 * chnn_num, msk_set);
}
