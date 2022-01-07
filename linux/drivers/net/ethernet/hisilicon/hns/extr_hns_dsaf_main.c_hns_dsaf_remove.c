
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsaf_device {int dummy; } ;


 struct dsaf_device* dev_get_drvdata (int *) ;
 int hns_dsaf_ae_uninit (struct dsaf_device*) ;
 int hns_dsaf_free (struct dsaf_device*) ;
 int hns_dsaf_free_dev (struct dsaf_device*) ;
 int hns_mac_uninit (struct dsaf_device*) ;
 int hns_ppe_uninit (struct dsaf_device*) ;

__attribute__((used)) static int hns_dsaf_remove(struct platform_device *pdev)
{
 struct dsaf_device *dsaf_dev = dev_get_drvdata(&pdev->dev);

 hns_dsaf_ae_uninit(dsaf_dev);

 hns_ppe_uninit(dsaf_dev);

 hns_mac_uninit(dsaf_dev);

 hns_dsaf_free(dsaf_dev);

 hns_dsaf_free_dev(dsaf_dev);

 return 0;
}
