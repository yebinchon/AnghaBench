
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sdhci_host {scalar_t__ version; int flags; scalar_t__ v4_mode; } ;


 int SDHCI_CTRL_64BIT_ADDR ;
 int SDHCI_CTRL_ADMA32 ;
 int SDHCI_CTRL_ADMA64 ;
 int SDHCI_CTRL_DMA_MASK ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_HOST_CONTROL2 ;
 int SDHCI_REQ_USE_DMA ;
 scalar_t__ SDHCI_SPEC_200 ;
 int SDHCI_USE_64_BIT_DMA ;
 int SDHCI_USE_ADMA ;
 int sdhci_readb (struct sdhci_host*,int ) ;
 int sdhci_readw (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_config_dma(struct sdhci_host *host)
{
 u8 ctrl;
 u16 ctrl2;

 if (host->version < SDHCI_SPEC_200)
  return;

 ctrl = sdhci_readb(host, SDHCI_HOST_CONTROL);






 ctrl &= ~SDHCI_CTRL_DMA_MASK;
 if (!(host->flags & SDHCI_REQ_USE_DMA))
  goto out;


 if (host->flags & SDHCI_USE_ADMA)
  ctrl |= SDHCI_CTRL_ADMA32;

 if (host->flags & SDHCI_USE_64_BIT_DMA) {





  if (host->v4_mode) {
   ctrl2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
   ctrl2 |= SDHCI_CTRL_64BIT_ADDR;
   sdhci_writew(host, ctrl2, SDHCI_HOST_CONTROL2);
  } else if (host->flags & SDHCI_USE_ADMA) {




   ctrl |= SDHCI_CTRL_ADMA64;
  }
 }

out:
 sdhci_writeb(host, ctrl, SDHCI_HOST_CONTROL);
}
