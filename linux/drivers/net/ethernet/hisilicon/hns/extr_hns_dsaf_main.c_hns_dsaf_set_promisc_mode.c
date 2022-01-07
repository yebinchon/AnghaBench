
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dsaf_ver; } ;


 scalar_t__ AE_IS_VER1 (int ) ;
 int DSAF_CFG_0_REG ;
 int DSAF_CFG_MIX_MODE_S ;
 int HNS_DSAF_IS_DEBUG (struct dsaf_device*) ;
 int dsaf_set_dev_bit (struct dsaf_device*,int ,int ,int) ;

void hns_dsaf_set_promisc_mode(struct dsaf_device *dsaf_dev, u32 en)
{
 if (AE_IS_VER1(dsaf_dev->dsaf_ver) && !HNS_DSAF_IS_DEBUG(dsaf_dev))
  dsaf_set_dev_bit(dsaf_dev, DSAF_CFG_0_REG,
     DSAF_CFG_MIX_MODE_S, !!en);
}
