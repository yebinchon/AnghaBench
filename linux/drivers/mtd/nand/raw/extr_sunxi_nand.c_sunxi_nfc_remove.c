
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_nfc {int ahb_clk; int mod_clk; scalar_t__ dmac; int reset; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int dma_release_channel (scalar_t__) ;
 struct sunxi_nfc* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int sunxi_nand_chips_cleanup (struct sunxi_nfc*) ;

__attribute__((used)) static int sunxi_nfc_remove(struct platform_device *pdev)
{
 struct sunxi_nfc *nfc = platform_get_drvdata(pdev);

 sunxi_nand_chips_cleanup(nfc);

 reset_control_assert(nfc->reset);

 if (nfc->dmac)
  dma_release_channel(nfc->dmac);
 clk_disable_unprepare(nfc->mod_clk);
 clk_disable_unprepare(nfc->ahb_clk);

 return 0;
}
