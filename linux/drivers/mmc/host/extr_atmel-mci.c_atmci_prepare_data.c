
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_data {int blocks; int blksz; int flags; int sg_len; int sg; int error; } ;
struct atmel_mci {int need_reset; scalar_t__ pio_offset; int * data_chan; struct mmc_data* data; int sg_len; int sg; } ;


 int ATMCI_DATA_ERROR_FLAGS ;
 int ATMCI_RXRDY ;
 int ATMCI_TXRDY ;
 int EINPROGRESS ;
 int MMC_DATA_READ ;

__attribute__((used)) static u32 atmci_prepare_data(struct atmel_mci *host, struct mmc_data *data)
{
 u32 iflags;

 data->error = -EINPROGRESS;

 host->sg = data->sg;
 host->sg_len = data->sg_len;
 host->data = data;
 host->data_chan = ((void*)0);

 iflags = ATMCI_DATA_ERROR_FLAGS;
 if (data->blocks * data->blksz < 12
   || (data->blocks * data->blksz) & 3)
  host->need_reset = 1;

 host->pio_offset = 0;
 if (data->flags & MMC_DATA_READ)
  iflags |= ATMCI_RXRDY;
 else
  iflags |= ATMCI_TXRDY;

 return iflags;
}
