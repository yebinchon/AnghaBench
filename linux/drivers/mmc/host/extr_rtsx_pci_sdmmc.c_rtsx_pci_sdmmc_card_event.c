
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_sdmmc {int cookie; int mmc; } ;
struct platform_device {int dummy; } ;


 int mmc_detect_change (int ,int ) ;
 struct realtek_pci_sdmmc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void rtsx_pci_sdmmc_card_event(struct platform_device *pdev)
{
 struct realtek_pci_sdmmc *host = platform_get_drvdata(pdev);

 host->cookie = -1;
 mmc_detect_change(host->mmc, 0);
}
