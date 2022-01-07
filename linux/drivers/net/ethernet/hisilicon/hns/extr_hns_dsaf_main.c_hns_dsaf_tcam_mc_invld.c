
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_device {int tcam_lock; } ;


 int DSAF_TBL_TCAM_MCAST_CFG_0_0_REG ;
 int DSAF_TBL_TCAM_MCAST_CFG_1_0_REG ;
 int DSAF_TBL_TCAM_MCAST_CFG_2_0_REG ;
 int DSAF_TBL_TCAM_MCAST_CFG_3_0_REG ;
 int DSAF_TBL_TCAM_MCAST_CFG_4_0_REG ;
 int dsaf_write_dev (struct dsaf_device*,int ,int ) ;
 int hns_dsaf_tbl_tcam_addr_cfg (struct dsaf_device*,int ) ;
 int hns_dsaf_tbl_tcam_mcast_pul (struct dsaf_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hns_dsaf_tcam_mc_invld(struct dsaf_device *dsaf_dev, u32 address)
{
 spin_lock_bh(&dsaf_dev->tcam_lock);


 hns_dsaf_tbl_tcam_addr_cfg(dsaf_dev, address);


 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_MCAST_CFG_0_0_REG, 0);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_MCAST_CFG_1_0_REG, 0);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_MCAST_CFG_2_0_REG, 0);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_MCAST_CFG_3_0_REG, 0);
 dsaf_write_dev(dsaf_dev, DSAF_TBL_TCAM_MCAST_CFG_4_0_REG, 0);


 hns_dsaf_tbl_tcam_mcast_pul(dsaf_dev);

 spin_unlock_bh(&dsaf_dev->tcam_lock);
}
