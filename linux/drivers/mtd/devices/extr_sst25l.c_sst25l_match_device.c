
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint16_t ;
struct spi_transfer {unsigned char* tx_buf; unsigned char* rx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dev; } ;
struct flash_info {unsigned char device_id; } ;
typedef int cmd_resp ;


 int ARRAY_SIZE (struct flash_info*) ;
 unsigned char SST25L_CMD_READ_ID ;
 int dev_err (int *,char*,...) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;
 struct flash_info* sst25l_flash_info ;

__attribute__((used)) static struct flash_info *sst25l_match_device(struct spi_device *spi)
{
 struct flash_info *flash_info = ((void*)0);
 struct spi_message m;
 struct spi_transfer t;
 unsigned char cmd_resp[6];
 int i, err;
 uint16_t id;

 spi_message_init(&m);
 memset(&t, 0, sizeof(struct spi_transfer));

 cmd_resp[0] = SST25L_CMD_READ_ID;
 cmd_resp[1] = 0;
 cmd_resp[2] = 0;
 cmd_resp[3] = 0;
 cmd_resp[4] = 0xff;
 cmd_resp[5] = 0xff;
 t.tx_buf = cmd_resp;
 t.rx_buf = cmd_resp;
 t.len = sizeof(cmd_resp);
 spi_message_add_tail(&t, &m);
 err = spi_sync(spi, &m);
 if (err < 0) {
  dev_err(&spi->dev, "error reading device id\n");
  return ((void*)0);
 }

 id = (cmd_resp[4] << 8) | cmd_resp[5];

 for (i = 0; i < ARRAY_SIZE(sst25l_flash_info); i++)
  if (sst25l_flash_info[i].device_id == id)
   flash_info = &sst25l_flash_info[i];

 if (!flash_info)
  dev_err(&spi->dev, "unknown id %.4x\n", id);

 return flash_info;
}
