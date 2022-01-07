
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsaf_device {TYPE_1__* misc_op; } ;
struct TYPE_2__ {int (* dsaf_reset ) (struct dsaf_device*,int ) ;} ;


 int stub1 (struct dsaf_device*,int ) ;

__attribute__((used)) static void hns_dsaf_remove_hw(struct dsaf_device *dsaf_dev)
{

 dsaf_dev->misc_op->dsaf_reset(dsaf_dev, 0);
}
