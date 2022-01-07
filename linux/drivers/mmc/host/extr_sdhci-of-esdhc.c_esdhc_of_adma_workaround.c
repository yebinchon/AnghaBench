
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {TYPE_1__* data; } ;
struct sdhci_esdhc {scalar_t__ vendor_ver; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int bytes_xfered; int sg; scalar_t__ error; } ;


 int SDHCI_DEFAULT_BOUNDARY_SIZE ;
 int SDHCI_DMA_ADDRESS ;
 int SDHCI_INT_BLK_GAP ;
 int SDHCI_INT_DATA_END ;
 scalar_t__ VENDOR_V_23 ;
 struct sdhci_esdhc* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int sg_dma_address (int ) ;

__attribute__((used)) static void esdhc_of_adma_workaround(struct sdhci_host *host, u32 intmask)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_esdhc *esdhc = sdhci_pltfm_priv(pltfm_host);
 bool applicable;
 dma_addr_t dmastart;
 dma_addr_t dmanow;

 applicable = (intmask & SDHCI_INT_DATA_END) &&
       (intmask & SDHCI_INT_BLK_GAP) &&
       (esdhc->vendor_ver == VENDOR_V_23);
 if (!applicable)
  return;

 host->data->error = 0;
 dmastart = sg_dma_address(host->data->sg);
 dmanow = dmastart + host->data->bytes_xfered;



 dmanow = (dmanow & ~(SDHCI_DEFAULT_BOUNDARY_SIZE - 1)) +
  SDHCI_DEFAULT_BOUNDARY_SIZE;
 host->data->bytes_xfered = dmanow - dmastart;
 sdhci_writel(host, dmanow, SDHCI_DMA_ADDRESS);
}
