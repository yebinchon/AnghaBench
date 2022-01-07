
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucb1x00_dev {TYPE_1__* ucb; struct platform_device* priv; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int IS_ERR (struct platform_device*) ;
 int dev_attr_batt_temp ;
 int dev_attr_vbatt ;
 int dev_attr_vcharger ;
 int device_remove_file (int *,int *) ;
 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void ucb1x00_assabet_remove(struct ucb1x00_dev *dev)
{
 struct platform_device *pdev = dev->priv;

 if (!IS_ERR(pdev))
  platform_device_unregister(pdev);

 device_remove_file(&dev->ucb->dev, &dev_attr_batt_temp);
 device_remove_file(&dev->ucb->dev, &dev_attr_vcharger);
 device_remove_file(&dev->ucb->dev, &dev_attr_vbatt);
}
