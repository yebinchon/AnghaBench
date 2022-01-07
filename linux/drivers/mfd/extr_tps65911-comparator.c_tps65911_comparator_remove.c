
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65910 {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dev_attr_comp1_threshold ;
 int dev_attr_comp2_threshold ;
 struct tps65910* dev_get_drvdata (int ) ;
 int device_remove_file (TYPE_1__*,int *) ;

__attribute__((used)) static int tps65911_comparator_remove(struct platform_device *pdev)
{
 struct tps65910 *tps65910;

 tps65910 = dev_get_drvdata(pdev->dev.parent);
 device_remove_file(&pdev->dev, &dev_attr_comp2_threshold);
 device_remove_file(&pdev->dev, &dev_attr_comp1_threshold);

 return 0;
}
