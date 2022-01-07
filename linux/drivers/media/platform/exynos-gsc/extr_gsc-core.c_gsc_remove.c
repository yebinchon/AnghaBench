
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int name; int dev; } ;
struct gsc_dev {int num_clocks; int * clock; int v4l2_dev; } ;


 int clk_disable_unprepare (int ) ;
 int dev_dbg (int *,char*,int ) ;
 int gsc_unregister_m2m_device (struct gsc_dev*) ;
 struct gsc_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_dma_contig_clear_max_seg_size (int *) ;

__attribute__((used)) static int gsc_remove(struct platform_device *pdev)
{
 struct gsc_dev *gsc = platform_get_drvdata(pdev);
 int i;

 pm_runtime_get_sync(&pdev->dev);

 gsc_unregister_m2m_device(gsc);
 v4l2_device_unregister(&gsc->v4l2_dev);

 vb2_dma_contig_clear_max_seg_size(&pdev->dev);
 for (i = 0; i < gsc->num_clocks; i++)
  clk_disable_unprepare(gsc->clock[i]);

 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 dev_dbg(&pdev->dev, "%s driver unloaded\n", pdev->name);
 return 0;
}
