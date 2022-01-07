
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int dummy; } ;


 int DSAF_TBL_TCAM_ADDR_0_REG ;
 int DSAF_TBL_TCAM_ADDR_M ;
 int DSAF_TBL_TCAM_ADDR_S ;
 int dsaf_set_dev_field (struct dsaf_device*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void hns_dsaf_tbl_tcam_addr_cfg(struct dsaf_device *dsaf_dev,
           u32 tab_tcam_addr)
{
 dsaf_set_dev_field(dsaf_dev, DSAF_TBL_TCAM_ADDR_0_REG,
      DSAF_TBL_TCAM_ADDR_M, DSAF_TBL_TCAM_ADDR_S,
      tab_tcam_addr);
}
