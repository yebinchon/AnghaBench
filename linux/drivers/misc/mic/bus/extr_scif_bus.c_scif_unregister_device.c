
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_hw_dev {int dev; } ;


 int device_unregister (int *) ;

void scif_unregister_device(struct scif_hw_dev *sdev)
{
 device_unregister(&sdev->dev);
}
