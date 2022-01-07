
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fimc_dev {int * clock; } ;


 size_t CLK_BUS ;
 size_t CLK_GATE ;
 int clk_disable (int ) ;
 int dev_info (int *,char*) ;
 int fimc_clk_put (struct fimc_dev*) ;
 int fimc_unregister_capture_subdev (struct fimc_dev*) ;
 struct fimc_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_status_suspended (int *) ;
 int vb2_dma_contig_clear_max_seg_size (int *) ;

__attribute__((used)) static int fimc_remove(struct platform_device *pdev)
{
 struct fimc_dev *fimc = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 if (!pm_runtime_status_suspended(&pdev->dev))
  clk_disable(fimc->clock[CLK_GATE]);
 pm_runtime_set_suspended(&pdev->dev);

 fimc_unregister_capture_subdev(fimc);
 vb2_dma_contig_clear_max_seg_size(&pdev->dev);

 clk_disable(fimc->clock[CLK_BUS]);
 fimc_clk_put(fimc);

 dev_info(&pdev->dev, "driver unloaded\n");
 return 0;
}
