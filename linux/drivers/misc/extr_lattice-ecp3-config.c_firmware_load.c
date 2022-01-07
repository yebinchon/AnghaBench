
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct spi_device {int dev; } ;
struct fpga_data {int fw_loaded; } ;
struct firmware {int size; int data; } ;
struct TYPE_3__ {scalar_t__ jedec_id; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FPGA_CLEAR_LOOP_COUNT ;
 int FPGA_CLEAR_MSLEEP ;
 int FPGA_CMD_CLEAR ;
 int FPGA_CMD_READ_ID ;
 int FPGA_CMD_READ_STATUS ;
 int FPGA_CMD_REFRESH ;
 int FPGA_CMD_WRITE_DIS ;
 int FPGA_CMD_WRITE_EN ;
 int FPGA_CMD_WRITE_INC ;
 scalar_t__ FPGA_STATUS_CLEARED ;
 scalar_t__ FPGA_STATUS_DONE ;
 int GFP_KERNEL ;
 int complete (int *) ;
 int dev_dbg (int *,char*,scalar_t__) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,...) ;
 TYPE_1__* ecp3_dev ;
 scalar_t__ get_unaligned_be32 (int*) ;
 int kfree (int*) ;
 int* kzalloc (int,int ) ;
 int memcpy (int*,int ,int) ;
 int msleep (int ) ;
 int release_firmware (struct firmware const*) ;
 struct fpga_data* spi_get_drvdata (struct spi_device*) ;
 int spi_write (struct spi_device*,int*,int) ;
 int spi_write_then_read (struct spi_device*,int*,int,int*,int) ;

__attribute__((used)) static void firmware_load(const struct firmware *fw, void *context)
{
 struct spi_device *spi = (struct spi_device *)context;
 struct fpga_data *data = spi_get_drvdata(spi);
 u8 *buffer;
 int ret;
 u8 txbuf[8];
 u8 rxbuf[8];
 int rx_len = 8;
 int i;
 u32 jedec_id;
 u32 status;

 if (fw == ((void*)0)) {
  dev_err(&spi->dev, "Cannot load firmware, aborting\n");
  return;
 }

 if (fw->size == 0) {
  dev_err(&spi->dev, "Error: Firmware size is 0!\n");
  return;
 }


 txbuf[1] = 0x00;
 txbuf[2] = 0x00;
 txbuf[3] = 0x00;


 txbuf[0] = FPGA_CMD_READ_ID;
 ret = spi_write_then_read(spi, txbuf, 8, rxbuf, rx_len);
 jedec_id = get_unaligned_be32(&rxbuf[4]);
 dev_dbg(&spi->dev, "FPGA JTAG ID=%08x\n", jedec_id);

 for (i = 0; i < ARRAY_SIZE(ecp3_dev); i++) {
  if (jedec_id == ecp3_dev[i].jedec_id)
   break;
 }
 if (i == ARRAY_SIZE(ecp3_dev)) {
  dev_err(&spi->dev,
   "Error: No supported FPGA detected (JEDEC_ID=%08x)!\n",
   jedec_id);
  return;
 }

 dev_info(&spi->dev, "FPGA %s detected\n", ecp3_dev[i].name);

 txbuf[0] = FPGA_CMD_READ_STATUS;
 ret = spi_write_then_read(spi, txbuf, 8, rxbuf, rx_len);
 status = get_unaligned_be32(&rxbuf[4]);
 dev_dbg(&spi->dev, "FPGA Status=%08x\n", status);

 buffer = kzalloc(fw->size + 8, GFP_KERNEL);
 if (!buffer) {
  dev_err(&spi->dev, "Error: Can't allocate memory!\n");
  return;
 }




 buffer[0] = FPGA_CMD_WRITE_INC;
 buffer[1] = 0xff;
 buffer[2] = 0xff;
 buffer[3] = 0xff;
 memcpy(buffer + 4, fw->data, fw->size);

 txbuf[0] = FPGA_CMD_REFRESH;
 ret = spi_write(spi, txbuf, 4);

 txbuf[0] = FPGA_CMD_WRITE_EN;
 ret = spi_write(spi, txbuf, 4);

 txbuf[0] = FPGA_CMD_CLEAR;
 ret = spi_write(spi, txbuf, 4);




 for (i = 0; i < FPGA_CLEAR_LOOP_COUNT; i++) {
  txbuf[0] = FPGA_CMD_READ_STATUS;
  ret = spi_write_then_read(spi, txbuf, 8, rxbuf, rx_len);
  status = get_unaligned_be32(&rxbuf[4]);
  if (status == FPGA_STATUS_CLEARED)
   break;

  msleep(FPGA_CLEAR_MSLEEP);
 }

 if (i == FPGA_CLEAR_LOOP_COUNT) {
  dev_err(&spi->dev,
   "Error: Timeout waiting for FPGA to clear (status=%08x)!\n",
   status);
  kfree(buffer);
  return;
 }

 dev_info(&spi->dev, "Configuring the FPGA...\n");
 ret = spi_write(spi, buffer, fw->size + 8);

 txbuf[0] = FPGA_CMD_WRITE_DIS;
 ret = spi_write(spi, txbuf, 4);

 txbuf[0] = FPGA_CMD_READ_STATUS;
 ret = spi_write_then_read(spi, txbuf, 8, rxbuf, rx_len);
 status = get_unaligned_be32(&rxbuf[4]);
 dev_dbg(&spi->dev, "FPGA Status=%08x\n", status);


 if (status & FPGA_STATUS_DONE)
  dev_info(&spi->dev, "FPGA successfully configured!\n");
 else
  dev_info(&spi->dev, "FPGA not configured (DONE not set)\n");




 release_firmware(fw);

 kfree(buffer);

 complete(&data->fw_loaded);
}
