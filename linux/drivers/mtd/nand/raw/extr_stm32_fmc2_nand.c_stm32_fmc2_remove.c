
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_fmc2_nand {int chip; } ;
struct stm32_fmc2_nfc {int clk; int dma_ecc_sg; int dma_data_sg; scalar_t__ dma_rx_ch; scalar_t__ dma_tx_ch; scalar_t__ dma_ecc_ch; struct stm32_fmc2_nand nand; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (scalar_t__) ;
 int nand_release (int *) ;
 struct stm32_fmc2_nfc* platform_get_drvdata (struct platform_device*) ;
 int sg_free_table (int *) ;

__attribute__((used)) static int stm32_fmc2_remove(struct platform_device *pdev)
{
 struct stm32_fmc2_nfc *fmc2 = platform_get_drvdata(pdev);
 struct stm32_fmc2_nand *nand = &fmc2->nand;

 nand_release(&nand->chip);

 if (fmc2->dma_ecc_ch)
  dma_release_channel(fmc2->dma_ecc_ch);
 if (fmc2->dma_tx_ch)
  dma_release_channel(fmc2->dma_tx_ch);
 if (fmc2->dma_rx_ch)
  dma_release_channel(fmc2->dma_rx_ch);

 sg_free_table(&fmc2->dma_data_sg);
 sg_free_table(&fmc2->dma_ecc_sg);

 clk_disable_unprepare(fmc2->clk);

 return 0;
}
