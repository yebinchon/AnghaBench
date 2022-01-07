
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct spi_device {int dummy; } ;


 scalar_t__ DS26522_BERT_ADDR_END ;
 scalar_t__ DS26522_BERT_ADDR_START ;
 scalar_t__ DS26522_GFCR_ADDR ;
 int DS26522_GFCR_BPCLK_2048KHZ ;
 scalar_t__ DS26522_GFSRR_ADDR ;
 int DS26522_GFSRR_NORMAL ;
 int DS26522_GFSRR_RESET ;
 scalar_t__ DS26522_GLSRR_ADDR ;
 int DS26522_GLSRR_NORMAL ;
 int DS26522_GLSRR_RESET ;
 scalar_t__ DS26522_GTCCR_ADDR ;
 int DS26522_GTCCR_BFREQSEL_2048KHZ ;
 int DS26522_GTCCR_BPREFSEL_REFCLKIN ;
 int DS26522_GTCCR_FREQSEL_2048KHZ ;
 int DS26522_GTCR1 ;
 scalar_t__ DS26522_GTCR1_ADDR ;
 scalar_t__ DS26522_GTCR2_ADDR ;
 int DS26522_GTCR2_TSSYNCOUT ;
 scalar_t__ DS26522_LIU_ADDR_END ;
 scalar_t__ DS26522_LIU_ADDR_START ;
 scalar_t__ DS26522_RF_ADDR_END ;
 scalar_t__ DS26522_RF_ADDR_START ;
 scalar_t__ DS26522_RMMR_ADDR ;
 int DS26522_RMMR_SFTRST ;
 scalar_t__ DS26522_TF_ADDR_END ;
 scalar_t__ DS26522_TF_ADDR_START ;
 scalar_t__ DS26522_TMMR_ADDR ;
 int DS26522_TMMR_SFTRST ;
 int ds26522_e1_spec_config (struct spi_device*) ;
 int slic_write (struct spi_device*,scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int slic_ds26522_init_configure(struct spi_device *spi)
{
 u16 addr;


 slic_write(spi, DS26522_GTCCR_ADDR, DS26522_GTCCR_BPREFSEL_REFCLKIN |
   DS26522_GTCCR_BFREQSEL_2048KHZ |
   DS26522_GTCCR_FREQSEL_2048KHZ);
 slic_write(spi, DS26522_GTCR2_ADDR, DS26522_GTCR2_TSSYNCOUT);
 slic_write(spi, DS26522_GFCR_ADDR, DS26522_GFCR_BPCLK_2048KHZ);


 slic_write(spi, DS26522_GTCR1_ADDR, DS26522_GTCR1);


 slic_write(spi, DS26522_GLSRR_ADDR, DS26522_GLSRR_RESET);


 slic_write(spi, DS26522_GFSRR_ADDR, DS26522_GFSRR_RESET);

 usleep_range(100, 120);

 slic_write(spi, DS26522_GLSRR_ADDR, DS26522_GLSRR_NORMAL);
 slic_write(spi, DS26522_GFSRR_ADDR, DS26522_GFSRR_NORMAL);


 slic_write(spi, DS26522_RMMR_ADDR, DS26522_RMMR_SFTRST);


 slic_write(spi, DS26522_TMMR_ADDR, DS26522_TMMR_SFTRST);

 usleep_range(100, 120);


 for (addr = DS26522_RF_ADDR_START; addr <= DS26522_RF_ADDR_END;
      addr++)
  slic_write(spi, addr, 0);

 for (addr = DS26522_TF_ADDR_START; addr <= DS26522_TF_ADDR_END;
      addr++)
  slic_write(spi, addr, 0);

 for (addr = DS26522_LIU_ADDR_START; addr <= DS26522_LIU_ADDR_END;
      addr++)
  slic_write(spi, addr, 0);

 for (addr = DS26522_BERT_ADDR_START; addr <= DS26522_BERT_ADDR_END;
      addr++)
  slic_write(spi, addr, 0);


 ds26522_e1_spec_config(spi);

 slic_write(spi, DS26522_GTCR1_ADDR, 0x00);

 return 0;
}
