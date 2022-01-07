
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tps65910_board {int vmbch2_threshold; int vmbch_threshold; } ;
struct tps65910 {int dev; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 int COMP1 ;
 int COMP2 ;
 int comp_threshold_set (struct tps65910*,int ,int ) ;
 int dev_attr_comp1_threshold ;
 int dev_attr_comp2_threshold ;
 int dev_err (TYPE_1__*,char*) ;
 struct tps65910* dev_get_drvdata (int ) ;
 struct tps65910_board* dev_get_platdata (int ) ;
 int device_create_file (TYPE_1__*,int *) ;

__attribute__((used)) static int tps65911_comparator_probe(struct platform_device *pdev)
{
 struct tps65910 *tps65910 = dev_get_drvdata(pdev->dev.parent);
 struct tps65910_board *pdata = dev_get_platdata(tps65910->dev);
 int ret;

 ret = comp_threshold_set(tps65910, COMP1, pdata->vmbch_threshold);
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot set COMP1 threshold\n");
  return ret;
 }

 ret = comp_threshold_set(tps65910, COMP2, pdata->vmbch2_threshold);
 if (ret < 0) {
  dev_err(&pdev->dev, "cannot set COMP2 threshold\n");
  return ret;
 }


 ret = device_create_file(&pdev->dev, &dev_attr_comp1_threshold);
 if (ret < 0)
  dev_err(&pdev->dev, "failed to add COMP1 sysfs file\n");

 ret = device_create_file(&pdev->dev, &dev_attr_comp2_threshold);
 if (ret < 0)
  dev_err(&pdev->dev, "failed to add COMP2 sysfs file\n");

 return ret;
}
