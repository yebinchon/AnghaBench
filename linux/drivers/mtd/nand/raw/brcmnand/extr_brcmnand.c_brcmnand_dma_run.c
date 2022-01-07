
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int dma_pending; int dev; int dma_done; } ;
typedef int dma_addr_t ;


 int FLASH_DMA_CTRL ;
 int FLASH_DMA_ERROR_STATUS ;
 int FLASH_DMA_FIRST_DESC ;
 int FLASH_DMA_FIRST_DESC_EXT ;
 int FLASH_DMA_STATUS ;
 int dev_err (int ,char*,int ,int ) ;
 int flash_dma_readl (struct brcmnand_controller*,int ) ;
 int flash_dma_writel (struct brcmnand_controller*,int ,int) ;
 int lower_32_bits (int ) ;
 int mb () ;
 unsigned long msecs_to_jiffies (int) ;
 int upper_32_bits (int ) ;
 scalar_t__ wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static void brcmnand_dma_run(struct brcmnand_host *host, dma_addr_t desc)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 unsigned long timeo = msecs_to_jiffies(100);

 flash_dma_writel(ctrl, FLASH_DMA_FIRST_DESC, lower_32_bits(desc));
 (void)flash_dma_readl(ctrl, FLASH_DMA_FIRST_DESC);
 flash_dma_writel(ctrl, FLASH_DMA_FIRST_DESC_EXT, upper_32_bits(desc));
 (void)flash_dma_readl(ctrl, FLASH_DMA_FIRST_DESC_EXT);


 ctrl->dma_pending = 1;
 mb();
 flash_dma_writel(ctrl, FLASH_DMA_CTRL, 0x03);

 if (wait_for_completion_timeout(&ctrl->dma_done, timeo) <= 0) {
  dev_err(ctrl->dev,
    "timeout waiting for DMA; status %#x, error status %#x\n",
    flash_dma_readl(ctrl, FLASH_DMA_STATUS),
    flash_dma_readl(ctrl, FLASH_DMA_ERROR_STATUS));
 }
 ctrl->dma_pending = 0;
 flash_dma_writel(ctrl, FLASH_DMA_CTRL, 0);
}
