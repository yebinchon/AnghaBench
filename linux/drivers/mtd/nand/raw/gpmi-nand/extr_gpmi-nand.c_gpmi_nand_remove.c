
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpmi_nand_data {int nand; } ;


 int gpmi_free_dma_buffer (struct gpmi_nand_data*) ;
 int nand_release (int *) ;
 struct gpmi_nand_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;
 int release_resources (struct gpmi_nand_data*) ;

__attribute__((used)) static int gpmi_nand_remove(struct platform_device *pdev)
{
 struct gpmi_nand_data *this = platform_get_drvdata(pdev);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 nand_release(&this->nand);
 gpmi_free_dma_buffer(this);
 release_resources(this);
 return 0;
}
