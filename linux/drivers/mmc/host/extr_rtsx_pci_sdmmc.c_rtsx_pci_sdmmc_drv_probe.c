
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtsx_pcr {TYPE_1__* slots; } ;
struct realtek_pci_sdmmc {int cookie; int host_mutex; int work; int power_state; struct platform_device* pdev; struct mmc_host* mmc; struct rtsx_pcr* pcr; } ;
struct TYPE_5__ {struct pcr_handle* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcr_handle {struct rtsx_pcr* pcr; } ;
struct mmc_host {int dummy; } ;
struct TYPE_4__ {int card_event; struct platform_device* p_dev; } ;


 int ENOMEM ;
 int ENXIO ;
 int INIT_WORK (int *,int ) ;
 size_t RTSX_SD_CARD ;
 int SDMMC_POWER_OFF ;
 int dev_dbg (TYPE_2__*,char*) ;
 int mmc_add_host (struct mmc_host*) ;
 struct mmc_host* mmc_alloc_host (int,TYPE_2__*) ;
 struct realtek_pci_sdmmc* mmc_priv (struct mmc_host*) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct realtek_pci_sdmmc*) ;
 int realtek_init_host (struct realtek_pci_sdmmc*) ;
 int rtsx_pci_sdmmc_card_event ;
 int sd_request ;

__attribute__((used)) static int rtsx_pci_sdmmc_drv_probe(struct platform_device *pdev)
{
 struct mmc_host *mmc;
 struct realtek_pci_sdmmc *host;
 struct rtsx_pcr *pcr;
 struct pcr_handle *handle = pdev->dev.platform_data;

 if (!handle)
  return -ENXIO;

 pcr = handle->pcr;
 if (!pcr)
  return -ENXIO;

 dev_dbg(&(pdev->dev), ": Realtek PCI-E SDMMC controller found\n");

 mmc = mmc_alloc_host(sizeof(*host), &pdev->dev);
 if (!mmc)
  return -ENOMEM;

 host = mmc_priv(mmc);
 host->pcr = pcr;
 host->mmc = mmc;
 host->pdev = pdev;
 host->cookie = -1;
 host->power_state = SDMMC_POWER_OFF;
 INIT_WORK(&host->work, sd_request);
 platform_set_drvdata(pdev, host);
 pcr->slots[RTSX_SD_CARD].p_dev = pdev;
 pcr->slots[RTSX_SD_CARD].card_event = rtsx_pci_sdmmc_card_event;

 mutex_init(&host->host_mutex);

 realtek_init_host(host);

 mmc_add_host(mmc);

 return 0;
}
