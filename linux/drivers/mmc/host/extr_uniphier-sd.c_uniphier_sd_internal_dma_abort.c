
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tmio_mmc_host {scalar_t__ ctl; } ;


 scalar_t__ UNIPHIER_SD_DMA_RST ;
 int UNIPHIER_SD_DMA_RST_CH0 ;
 int UNIPHIER_SD_DMA_RST_CH1 ;
 int readl (scalar_t__) ;
 int uniphier_sd_dma_endisable (struct tmio_mmc_host*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_sd_internal_dma_abort(struct tmio_mmc_host *host)
{
 u32 tmp;

 uniphier_sd_dma_endisable(host, 0);

 tmp = readl(host->ctl + UNIPHIER_SD_DMA_RST);
 tmp &= ~(UNIPHIER_SD_DMA_RST_CH1 | UNIPHIER_SD_DMA_RST_CH0);
 writel(tmp, host->ctl + UNIPHIER_SD_DMA_RST);

 tmp |= UNIPHIER_SD_DMA_RST_CH1 | UNIPHIER_SD_DMA_RST_CH0;
 writel(tmp, host->ctl + UNIPHIER_SD_DMA_RST);
}
