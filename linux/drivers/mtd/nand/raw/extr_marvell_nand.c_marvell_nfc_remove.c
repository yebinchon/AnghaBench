
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct marvell_nfc {int core_clk; int reg_clk; int dma_chan; scalar_t__ use_dma; } ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (int ) ;
 int dmaengine_terminate_all (int ) ;
 int marvell_nand_chips_cleanup (struct marvell_nfc*) ;
 struct marvell_nfc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int marvell_nfc_remove(struct platform_device *pdev)
{
 struct marvell_nfc *nfc = platform_get_drvdata(pdev);

 marvell_nand_chips_cleanup(nfc);

 if (nfc->use_dma) {
  dmaengine_terminate_all(nfc->dma_chan);
  dma_release_channel(nfc->dma_chan);
 }

 clk_disable_unprepare(nfc->reg_clk);
 clk_disable_unprepare(nfc->core_clk);

 return 0;
}
