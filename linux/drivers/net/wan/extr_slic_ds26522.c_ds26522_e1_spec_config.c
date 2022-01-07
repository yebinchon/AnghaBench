
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int DS26522_E1TAF_ADDR ;
 int DS26522_E1TAF_DEFAULT ;
 int DS26522_E1TNAF_ADDR ;
 int DS26522_E1TNAF_DEFAULT ;
 int DS26522_LMCR_ADDR ;
 int DS26522_LMCR_TE ;
 int DS26522_LRISMR_75OHM ;
 int DS26522_LRISMR_ADDR ;
 int DS26522_LRISMR_MAX ;
 int DS26522_LTITSR_ADDR ;
 int DS26522_LTITSR_LBOS_75OHM ;
 int DS26522_LTITSR_TLIS_75OHM ;
 int DS26522_LTRCR_ADDR ;
 int DS26522_LTRCR_E1 ;
 int DS26522_RCR1_ADDR ;
 int DS26522_RCR1_E1_CCS ;
 int DS26522_RCR1_E1_HDB3 ;
 int DS26522_RIOCR_2048KHZ ;
 int DS26522_RIOCR_ADDR ;
 int DS26522_RIOCR_RSIO_OUT ;
 int DS26522_RMMR_ADDR ;
 int DS26522_RMMR_E1 ;
 int DS26522_RMMR_FRM_EN ;
 int DS26522_RMMR_INIT_DONE ;
 int DS26522_TCR1_ADDR ;
 int DS26522_TCR1_TB8ZS ;
 int DS26522_TIOCR_2048KHZ ;
 int DS26522_TIOCR_ADDR ;
 int DS26522_TIOCR_TSIO_OUT ;
 int DS26522_TMMR_ADDR ;
 int DS26522_TMMR_E1 ;
 int DS26522_TMMR_FRM_EN ;
 int DS26522_TMMR_INIT_DONE ;
 int slic_read (struct spi_device*,int ) ;
 int slic_write (struct spi_device*,int ,int) ;

__attribute__((used)) static void ds26522_e1_spec_config(struct spi_device *spi)
{

 slic_write(spi, DS26522_RMMR_ADDR, DS26522_RMMR_E1);


 slic_write(spi, DS26522_TMMR_ADDR, DS26522_TMMR_E1);


 slic_write(spi, DS26522_RMMR_ADDR,
     slic_read(spi, DS26522_RMMR_ADDR) | DS26522_RMMR_FRM_EN);


 slic_write(spi, DS26522_TMMR_ADDR,
     slic_read(spi, DS26522_TMMR_ADDR) | DS26522_TMMR_FRM_EN);


 slic_write(spi, DS26522_RCR1_ADDR,
     DS26522_RCR1_E1_HDB3 | DS26522_RCR1_E1_CCS);


 slic_write(spi, DS26522_RIOCR_ADDR,
     DS26522_RIOCR_2048KHZ | DS26522_RIOCR_RSIO_OUT);


 slic_write(spi, DS26522_TCR1_ADDR, DS26522_TCR1_TB8ZS);


 slic_write(spi, DS26522_TIOCR_ADDR,
     DS26522_TIOCR_2048KHZ | DS26522_TIOCR_TSIO_OUT);


 slic_write(spi, DS26522_E1TAF_ADDR, DS26522_E1TAF_DEFAULT);


 slic_write(spi, DS26522_E1TNAF_ADDR, DS26522_E1TNAF_DEFAULT);


 slic_write(spi, DS26522_RMMR_ADDR, slic_read(spi, DS26522_RMMR_ADDR) |
     DS26522_RMMR_INIT_DONE);


 slic_write(spi, DS26522_TMMR_ADDR, slic_read(spi, DS26522_TMMR_ADDR) |
     DS26522_TMMR_INIT_DONE);


 slic_write(spi, DS26522_LTRCR_ADDR, DS26522_LTRCR_E1);


 slic_write(spi, DS26522_LTITSR_ADDR,
     DS26522_LTITSR_TLIS_75OHM | DS26522_LTITSR_LBOS_75OHM);


 slic_write(spi, DS26522_LRISMR_ADDR,
     DS26522_LRISMR_75OHM | DS26522_LRISMR_MAX);


 slic_write(spi, DS26522_LMCR_ADDR, DS26522_LMCR_TE);
}
