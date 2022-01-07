
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pcan_pccard {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int PCC_EEP_RDSR ;
 int PCC_EEP_SR_WEN ;
 int PCC_EEP_SR_WIP ;
 int PCC_EEP_WRDI ;
 int PCC_EEP_WREN ;
 int PCC_EEP_WRITE (int) ;
 int PCC_SPI_ADR ;
 int PCC_SPI_DIR ;
 int PCC_SPI_DOR ;
 int PCC_SPI_IR ;
 int PCC_WRITE_MAX_LOOP ;
 int dev_err (int *,char*,...) ;
 int pcan_read_reg (struct pcan_pccard*,int ) ;
 int pcan_wait_spi_busy (struct pcan_pccard*) ;
 int pcan_write_reg (struct pcan_pccard*,int ,int) ;

__attribute__((used)) static int pcan_write_eeprom(struct pcan_pccard *card, u16 addr, u8 v)
{
 u8 status;
 int err, i;


 pcan_write_reg(card, PCC_SPI_IR, PCC_EEP_WREN);
 err = pcan_wait_spi_busy(card);
 if (err)
  goto we_spi_err;


 for (i = 0; i < PCC_WRITE_MAX_LOOP; i++) {

  pcan_write_reg(card, PCC_SPI_IR, PCC_EEP_RDSR);
  err = pcan_wait_spi_busy(card);
  if (err)
   goto we_spi_err;


  status = pcan_read_reg(card, PCC_SPI_DIR);
  if (status & PCC_EEP_SR_WEN)
   break;
 }

 if (i >= PCC_WRITE_MAX_LOOP) {
  dev_err(&card->pdev->dev,
   "stop waiting to be allowed to write in eeprom\n");
  return -EIO;
 }


 pcan_write_reg(card, PCC_SPI_ADR, addr & 0xff);
 pcan_write_reg(card, PCC_SPI_DOR, v);





 pcan_write_reg(card, PCC_SPI_IR, PCC_EEP_WRITE(addr));
 err = pcan_wait_spi_busy(card);
 if (err)
  goto we_spi_err;


 for (i = 0; i < PCC_WRITE_MAX_LOOP; i++) {

  pcan_write_reg(card, PCC_SPI_IR, PCC_EEP_RDSR);
  err = pcan_wait_spi_busy(card);
  if (err)
   goto we_spi_err;


  status = pcan_read_reg(card, PCC_SPI_DIR);
  if (!(status & PCC_EEP_SR_WIP))
   break;
 }

 if (i >= PCC_WRITE_MAX_LOOP) {
  dev_err(&card->pdev->dev,
   "stop waiting for write in eeprom to complete\n");
  return -EIO;
 }


 pcan_write_reg(card, PCC_SPI_IR, PCC_EEP_WRDI);
 err = pcan_wait_spi_busy(card);
 if (err)
  goto we_spi_err;

 return 0;

we_spi_err:
 dev_err(&card->pdev->dev,
  "stop waiting (spi engine always busy) err %d\n", err);

 return err;
}
