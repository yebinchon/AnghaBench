
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ae_dev {int cls_dev; } ;


 int THIS_MODULE ;
 int device_unregister (int *) ;
 int module_put (int ) ;

void hnae_ae_unregister(struct hnae_ae_dev *hdev)
{
 device_unregister(&hdev->cls_dev);
 module_put(THIS_MODULE);
}
