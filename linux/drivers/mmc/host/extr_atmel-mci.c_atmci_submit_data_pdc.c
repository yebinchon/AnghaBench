
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_data {int flags; } ;
struct atmel_mci {int dummy; } ;


 int ATMEL_PDC_PTCR ;
 int ATMEL_PDC_RXTEN ;
 int ATMEL_PDC_TXTEN ;
 int MMC_DATA_READ ;
 int atmci_writel (struct atmel_mci*,int ,int ) ;

__attribute__((used)) static void
atmci_submit_data_pdc(struct atmel_mci *host, struct mmc_data *data)
{
 if (data->flags & MMC_DATA_READ)
  atmci_writel(host, ATMEL_PDC_PTCR, ATMEL_PDC_RXTEN);
 else
  atmci_writel(host, ATMEL_PDC_PTCR, ATMEL_PDC_TXTEN);
}
