
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_tbl_tcam_ucast_cfg {int dummy; } ;
struct dsaf_tbl_tcam_data {int dummy; } ;
struct dsaf_device {int tcam_lock; } ;


 int hns_dsaf_tbl_tcam_addr_cfg (struct dsaf_device*,int ) ;
 int hns_dsaf_tbl_tcam_data_cfg (struct dsaf_device*,struct dsaf_tbl_tcam_data*) ;
 int hns_dsaf_tbl_tcam_data_ucast_pul (struct dsaf_device*) ;
 int hns_dsaf_tbl_tcam_ucast_cfg (struct dsaf_device*,struct dsaf_tbl_tcam_ucast_cfg*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hns_dsaf_tcam_uc_cfg(
 struct dsaf_device *dsaf_dev, u32 address,
 struct dsaf_tbl_tcam_data *ptbl_tcam_data,
 struct dsaf_tbl_tcam_ucast_cfg *ptbl_tcam_ucast)
{
 spin_lock_bh(&dsaf_dev->tcam_lock);


 hns_dsaf_tbl_tcam_addr_cfg(dsaf_dev, address);

 hns_dsaf_tbl_tcam_data_cfg(dsaf_dev, ptbl_tcam_data);

 hns_dsaf_tbl_tcam_ucast_cfg(dsaf_dev, ptbl_tcam_ucast);

 hns_dsaf_tbl_tcam_data_ucast_pul(dsaf_dev);

 spin_unlock_bh(&dsaf_dev->tcam_lock);
}
