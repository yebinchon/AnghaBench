
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsaf_device {int ae_dev; } ;


 int hnae_ae_unregister (int *) ;

void hns_dsaf_ae_uninit(struct dsaf_device *dsaf_dev)
{
 hnae_ae_unregister(&dsaf_dev->ae_dev);
}
