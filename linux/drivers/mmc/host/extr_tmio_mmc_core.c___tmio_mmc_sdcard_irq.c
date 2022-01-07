
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;


 int TMIO_STAT_CMDRESPEND ;
 int TMIO_STAT_CMDTIMEOUT ;
 int TMIO_STAT_DATAEND ;
 int TMIO_STAT_RXRDY ;
 int TMIO_STAT_TXRQ ;
 int tmio_mmc_ack_mmc_irqs (struct tmio_mmc_host*,int) ;
 int tmio_mmc_cmd_irq (struct tmio_mmc_host*,int) ;
 int tmio_mmc_data_irq (struct tmio_mmc_host*,int) ;
 int tmio_mmc_pio_irq (struct tmio_mmc_host*) ;

__attribute__((used)) static bool __tmio_mmc_sdcard_irq(struct tmio_mmc_host *host, int ireg,
      int status)
{

 if (ireg & (TMIO_STAT_CMDRESPEND | TMIO_STAT_CMDTIMEOUT)) {
  tmio_mmc_ack_mmc_irqs(host, TMIO_STAT_CMDRESPEND |
          TMIO_STAT_CMDTIMEOUT);
  tmio_mmc_cmd_irq(host, status);
  return 1;
 }


 if (ireg & (TMIO_STAT_RXRDY | TMIO_STAT_TXRQ)) {
  tmio_mmc_ack_mmc_irqs(host, TMIO_STAT_RXRDY | TMIO_STAT_TXRQ);
  tmio_mmc_pio_irq(host);
  return 1;
 }


 if (ireg & TMIO_STAT_DATAEND) {
  tmio_mmc_ack_mmc_irqs(host, TMIO_STAT_DATAEND);
  tmio_mmc_data_irq(host, status);
  return 1;
 }

 return 0;
}
