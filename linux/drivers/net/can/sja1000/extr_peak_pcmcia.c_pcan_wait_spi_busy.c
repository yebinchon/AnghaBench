
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcan_pccard {int dummy; } ;


 int EBUSY ;
 int PCC_CSR ;
 int PCC_CSR_SPI_BUSY ;
 int PCC_SPI_MAX_BUSY_WAIT_MS ;
 int jiffies ;
 int msecs_to_jiffies (int ) ;
 int pcan_read_reg (struct pcan_pccard*,int ) ;
 int schedule () ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int pcan_wait_spi_busy(struct pcan_pccard *card)
{
 unsigned long timeout = jiffies +
    msecs_to_jiffies(PCC_SPI_MAX_BUSY_WAIT_MS) + 1;


 while (pcan_read_reg(card, PCC_CSR) & PCC_CSR_SPI_BUSY) {
  if (time_after(jiffies, timeout))
   return -EBUSY;
  schedule();
 }

 return 0;
}
