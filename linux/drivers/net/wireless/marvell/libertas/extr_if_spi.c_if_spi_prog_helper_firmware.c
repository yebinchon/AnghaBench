
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int temp ;
struct if_spi_card {int dummy; } ;
struct firmware {int size; int * data; } ;


 int FIRMWARE_DNLD_OK ;
 int HELPER_FW_LOAD_CHUNK_SZ ;
 int IF_SPI_CARD_INT_CAUSE_REG ;
 int IF_SPI_CIC_CMD_DOWNLOAD_OVER ;
 int IF_SPI_CMD_RDWRPORT_REG ;
 int IF_SPI_HIST_CMD_DOWNLOAD_RDY ;
 int IF_SPI_HOST_INT_STATUS_REG ;
 int IF_SPI_SCRATCH_1_REG ;
 int mdelay (int) ;
 int memcpy (int *,int const*,int ) ;
 int memset (int *,int ,int) ;
 int min (int,int) ;
 int pr_err (char*,int) ;
 int spu_set_interrupt_mode (struct if_spi_card*,int,int ) ;
 int spu_wait_for_u16 (struct if_spi_card*,int ,int ,int ) ;
 int spu_write (struct if_spi_card*,int ,int *,int) ;
 int spu_write_u16 (struct if_spi_card*,int ,int) ;

__attribute__((used)) static int if_spi_prog_helper_firmware(struct if_spi_card *card,
     const struct firmware *firmware)
{
 int err = 0;
 int bytes_remaining;
 const u8 *fw;
 u8 temp[HELPER_FW_LOAD_CHUNK_SZ];

 err = spu_set_interrupt_mode(card, 1, 0);
 if (err)
  goto out;

 bytes_remaining = firmware->size;
 fw = firmware->data;


 while (bytes_remaining > 0) {




  err = spu_write_u16(card, IF_SPI_SCRATCH_1_REG,
     HELPER_FW_LOAD_CHUNK_SZ);
  if (err)
   goto out;

  err = spu_wait_for_u16(card, IF_SPI_HOST_INT_STATUS_REG,
     IF_SPI_HIST_CMD_DOWNLOAD_RDY,
     IF_SPI_HIST_CMD_DOWNLOAD_RDY);
  if (err)
   goto out;





  memset(temp, 0, sizeof(temp));
  memcpy(temp, fw,
         min(bytes_remaining, HELPER_FW_LOAD_CHUNK_SZ));
  mdelay(10);
  err = spu_write(card, IF_SPI_CMD_RDWRPORT_REG,
     temp, HELPER_FW_LOAD_CHUNK_SZ);
  if (err)
   goto out;


  err = spu_write_u16(card, IF_SPI_HOST_INT_STATUS_REG, 0);
  if (err)
   goto out;
  err = spu_write_u16(card, IF_SPI_CARD_INT_CAUSE_REG,
           IF_SPI_CIC_CMD_DOWNLOAD_OVER);
  if (err)
   goto out;
  bytes_remaining -= HELPER_FW_LOAD_CHUNK_SZ;
  fw += HELPER_FW_LOAD_CHUNK_SZ;
 }






 err = spu_write_u16(card, IF_SPI_SCRATCH_1_REG, FIRMWARE_DNLD_OK);
 if (err)
  goto out;
 err = spu_write_u16(card, IF_SPI_HOST_INT_STATUS_REG, 0);
 if (err)
  goto out;
 err = spu_write_u16(card, IF_SPI_CARD_INT_CAUSE_REG,
    IF_SPI_CIC_CMD_DOWNLOAD_OVER);
out:
 if (err)
  pr_err("failed to load helper firmware (err=%d)\n", err);

 return err;
}
