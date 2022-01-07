
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int sdhci_set_card_detection (struct sdhci_host*,int) ;

__attribute__((used)) static void sdhci_disable_card_detection(struct sdhci_host *host)
{
 sdhci_set_card_detection(host, 0);
}
