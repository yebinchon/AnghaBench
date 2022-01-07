
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int name; int dev; } ;
struct bdisp_dev {int clock; int v4l2_dev; int dev; } ;


 int IS_ERR (int ) ;
 int bdisp_debugfs_remove (struct bdisp_dev*) ;
 int bdisp_hw_free_filters (int ) ;
 int bdisp_unregister_device (struct bdisp_dev*) ;
 int clk_unprepare (int ) ;
 int dev_dbg (int *,char*,int ) ;
 struct bdisp_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static int bdisp_remove(struct platform_device *pdev)
{
 struct bdisp_dev *bdisp = platform_get_drvdata(pdev);

 bdisp_unregister_device(bdisp);

 bdisp_hw_free_filters(bdisp->dev);

 pm_runtime_disable(&pdev->dev);

 bdisp_debugfs_remove(bdisp);

 v4l2_device_unregister(&bdisp->v4l2_dev);

 if (!IS_ERR(bdisp->clock))
  clk_unprepare(bdisp->clock);

 dev_dbg(&pdev->dev, "%s driver unloaded\n", pdev->name);

 return 0;
}
