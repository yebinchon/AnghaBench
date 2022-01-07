
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mac_driver {int mac_id; int dev; } ;
struct dsaf_device {TYPE_1__* misc_op; } ;
struct TYPE_2__ {int (* ge_srst ) (struct dsaf_device*,int ,int ) ;} ;


 scalar_t__ dev_get_drvdata (int ) ;
 int stub1 (struct dsaf_device*,int ,int ) ;

__attribute__((used)) static void hns_gmac_free(void *mac_drv)
{
 struct mac_driver *drv = (struct mac_driver *)mac_drv;
 struct dsaf_device *dsaf_dev
  = (struct dsaf_device *)dev_get_drvdata(drv->dev);

 u32 mac_id = drv->mac_id;

 dsaf_dev->misc_op->ge_srst(dsaf_dev, mac_id, 0);
}
