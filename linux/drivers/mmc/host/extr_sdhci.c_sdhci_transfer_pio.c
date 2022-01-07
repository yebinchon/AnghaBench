
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_host {scalar_t__ blocks; int quirks; TYPE_1__* data; } ;
struct TYPE_2__ {int flags; int blocks; } ;


 int DBG (char*) ;
 int MMC_DATA_READ ;
 int SDHCI_DATA_AVAILABLE ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_QUIRK_BROKEN_SMALL_PIO ;
 int SDHCI_QUIRK_PIO_NEEDS_DELAY ;
 int SDHCI_SPACE_AVAILABLE ;
 int sdhci_read_block_pio (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_write_block_pio (struct sdhci_host*) ;
 int udelay (int) ;

__attribute__((used)) static void sdhci_transfer_pio(struct sdhci_host *host)
{
 u32 mask;

 if (host->blocks == 0)
  return;

 if (host->data->flags & MMC_DATA_READ)
  mask = SDHCI_DATA_AVAILABLE;
 else
  mask = SDHCI_SPACE_AVAILABLE;






 if ((host->quirks & SDHCI_QUIRK_BROKEN_SMALL_PIO) &&
  (host->data->blocks == 1))
  mask = ~0;

 while (sdhci_readl(host, SDHCI_PRESENT_STATE) & mask) {
  if (host->quirks & SDHCI_QUIRK_PIO_NEEDS_DELAY)
   udelay(100);

  if (host->data->flags & MMC_DATA_READ)
   sdhci_read_block_pio(host);
  else
   sdhci_write_block_pio(host);

  host->blocks--;
  if (host->blocks == 0)
   break;
 }

 DBG("PIO transfer complete.\n");
}
