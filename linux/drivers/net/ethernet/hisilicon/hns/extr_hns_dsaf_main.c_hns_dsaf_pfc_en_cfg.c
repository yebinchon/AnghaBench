
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dummy; } ;


 scalar_t__ DSAF_PFC_EN_0_REG ;
 int dsaf_write_dev (struct dsaf_device*,scalar_t__,int) ;

__attribute__((used)) static void hns_dsaf_pfc_en_cfg(struct dsaf_device *dsaf_dev,
    int mac_id, int tc_en)
{
 dsaf_write_dev(dsaf_dev, DSAF_PFC_EN_0_REG + mac_id * 4, tc_en);
}
