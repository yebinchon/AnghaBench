
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int name; } ;
struct hva_dev {int v4l2_dev; int work_queue; } ;
struct device {int dummy; } ;


 int HVA_PREFIX ;
 int destroy_workqueue (int ) ;
 int dev_info (struct device*,char*,int ,int ) ;
 int hva_debugfs_remove (struct hva_dev*) ;
 int hva_hw_remove (struct hva_dev*) ;
 struct device* hva_to_dev (struct hva_dev*) ;
 int hva_unregister_device (struct hva_dev*) ;
 struct hva_dev* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int hva_remove(struct platform_device *pdev)
{
 struct hva_dev *hva = platform_get_drvdata(pdev);
 struct device *dev = hva_to_dev(hva);

 hva_unregister_device(hva);

 destroy_workqueue(hva->work_queue);

 hva_hw_remove(hva);





 v4l2_device_unregister(&hva->v4l2_dev);

 dev_info(dev, "%s %s removed\n", HVA_PREFIX, pdev->name);

 return 0;
}
