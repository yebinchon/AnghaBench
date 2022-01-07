
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsaf_tbl_line_cfg {int dummy; } ;
struct dsaf_device {int tcam_lock; } ;


 int hns_dsaf_tbl_line_addr_cfg (struct dsaf_device*,int ) ;
 int hns_dsaf_tbl_line_cfg (struct dsaf_device*,struct dsaf_tbl_line_cfg*) ;
 int hns_dsaf_tbl_line_pul (struct dsaf_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hns_dsaf_single_line_tbl_cfg(
 struct dsaf_device *dsaf_dev,
 u32 address, struct dsaf_tbl_line_cfg *ptbl_line)
{
 spin_lock_bh(&dsaf_dev->tcam_lock);


 hns_dsaf_tbl_line_addr_cfg(dsaf_dev, address);


 hns_dsaf_tbl_line_cfg(dsaf_dev, ptbl_line);


 hns_dsaf_tbl_line_pul(dsaf_dev);

 spin_unlock_bh(&dsaf_dev->tcam_lock);
}
