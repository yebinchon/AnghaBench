
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct cqspi_st {int clk; scalar_t__ rx_chan; TYPE_2__* f_pdata; } ;
struct TYPE_3__ {int mtd; } ;
struct TYPE_4__ {TYPE_1__ nor; scalar_t__ registered; } ;


 int CQSPI_MAX_CHIPSELECT ;
 int clk_disable_unprepare (int ) ;
 int cqspi_controller_enable (struct cqspi_st*,int ) ;
 int dma_release_channel (scalar_t__) ;
 int mtd_device_unregister (int *) ;
 struct cqspi_st* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int cqspi_remove(struct platform_device *pdev)
{
 struct cqspi_st *cqspi = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < CQSPI_MAX_CHIPSELECT; i++)
  if (cqspi->f_pdata[i].registered)
   mtd_device_unregister(&cqspi->f_pdata[i].nor.mtd);

 cqspi_controller_enable(cqspi, 0);

 if (cqspi->rx_chan)
  dma_release_channel(cqspi->rx_chan);

 clk_disable_unprepare(cqspi->clk);

 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
