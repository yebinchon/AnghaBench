
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int dummy; } ;


 int hns_dsaf_voq_bp_all_thrd_cfg (struct dsaf_device*) ;

__attribute__((used)) static void hns_dsaf_voq_init(struct dsaf_device *dsaf_dev)
{
 hns_dsaf_voq_bp_all_thrd_cfg(dsaf_dev);
}
