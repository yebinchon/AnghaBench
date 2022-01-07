
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pci_slot {struct sdhci_host* host; TYPE_2__* chip; } ;
struct sdhci_host {int flags; int mmc; scalar_t__ ioaddr; } ;
struct device {int dummy; } ;
struct cqhci_host {int caps; int * ops; int quirks; scalar_t__ mmio; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int CQHCI_QUIRK_SHORT_TXFR_DESC_SZ ;
 int CQHCI_TASK_DESC_SZ_128 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SDHCI_USE_64_BIT_DMA ;
 int __sdhci_add_host (struct sdhci_host*) ;
 int cqhci_init (struct cqhci_host*,int ,int) ;
 struct cqhci_host* devm_kzalloc (struct device*,int,int ) ;
 int glk_cqhci_ops ;
 int sdhci_cleanup_host (struct sdhci_host*) ;
 int sdhci_setup_host (struct sdhci_host*) ;

__attribute__((used)) static int glk_emmc_add_host(struct sdhci_pci_slot *slot)
{
 struct device *dev = &slot->chip->pdev->dev;
 struct sdhci_host *host = slot->host;
 struct cqhci_host *cq_host;
 bool dma64;
 int ret;

 ret = sdhci_setup_host(host);
 if (ret)
  return ret;

 cq_host = devm_kzalloc(dev, sizeof(*cq_host), GFP_KERNEL);
 if (!cq_host) {
  ret = -ENOMEM;
  goto cleanup;
 }

 cq_host->mmio = host->ioaddr + 0x200;
 cq_host->quirks |= CQHCI_QUIRK_SHORT_TXFR_DESC_SZ;
 cq_host->ops = &glk_cqhci_ops;

 dma64 = host->flags & SDHCI_USE_64_BIT_DMA;
 if (dma64)
  cq_host->caps |= CQHCI_TASK_DESC_SZ_128;

 ret = cqhci_init(cq_host, host->mmc, dma64);
 if (ret)
  goto cleanup;

 ret = __sdhci_add_host(host);
 if (ret)
  goto cleanup;

 return 0;

cleanup:
 sdhci_cleanup_host(host);
 return ret;
}
