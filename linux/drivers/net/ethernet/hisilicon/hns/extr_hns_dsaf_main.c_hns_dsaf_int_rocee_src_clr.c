
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 scalar_t__ DSAF_ROCEE_INT_SRC_0_REG ;
 int dsaf_write_dev (struct dsaf_device*,scalar_t__,int) ;

__attribute__((used)) static void hns_dsaf_int_rocee_src_clr(struct dsaf_device *dsaf_dev,
           u32 chnn, u32 int_src)
{
 dsaf_write_dev(dsaf_dev,
         DSAF_ROCEE_INT_SRC_0_REG + 0x4 * chnn, int_src);
}
