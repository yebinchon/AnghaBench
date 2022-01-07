
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct fimc_lite {int dummy; } ;


 int dev_info (struct device*,char*) ;
 int fimc_lite_clk_put (struct fimc_lite*) ;
 int fimc_lite_unregister_capture_subdev (struct fimc_lite*) ;
 struct fimc_lite* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int vb2_dma_contig_clear_max_seg_size (struct device*) ;

__attribute__((used)) static int fimc_lite_remove(struct platform_device *pdev)
{
 struct fimc_lite *fimc = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;

 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 fimc_lite_unregister_capture_subdev(fimc);
 vb2_dma_contig_clear_max_seg_size(dev);
 fimc_lite_clk_put(fimc);

 dev_info(dev, "Driver unloaded\n");
 return 0;
}
