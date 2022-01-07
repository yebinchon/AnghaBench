
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_drv_priv {int * soft_mac_tbl; } ;
struct dsaf_device {int dummy; } ;


 scalar_t__ hns_dsaf_dev_priv (struct dsaf_device*) ;
 int hns_dsaf_remove_hw (struct dsaf_device*) ;
 int vfree (int *) ;

__attribute__((used)) static void hns_dsaf_free(struct dsaf_device *dsaf_dev)
{
 struct dsaf_drv_priv *priv =
     (struct dsaf_drv_priv *)hns_dsaf_dev_priv(dsaf_dev);

 hns_dsaf_remove_hw(dsaf_dev);


 vfree(priv->soft_mac_tbl);
 priv->soft_mac_tbl = ((void*)0);
}
