
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dummy; } ;


 int hns_dsaf_tbl_line_init (struct dsaf_device*) ;
 int hns_dsaf_tbl_stat_en (struct dsaf_device*) ;
 int hns_dsaf_tbl_tcam_init (struct dsaf_device*) ;

__attribute__((used)) static void hns_dsaf_tbl_init(struct dsaf_device *dsaf_dev)
{
 hns_dsaf_tbl_stat_en(dsaf_dev);

 hns_dsaf_tbl_tcam_init(dsaf_dev);
 hns_dsaf_tbl_line_init(dsaf_dev);
}
