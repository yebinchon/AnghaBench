
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transfer ;
struct spi_transfer {unsigned char* tx_buf; size_t len; unsigned char* rx_buf; } ;
struct spi_message {int actual_length; } ;
struct mtd_info {int dummy; } ;
struct mchp23k256_flash {int lock; int spi; } ;
typedef int loff_t ;
typedef int command ;


 int MAX_CMD_SIZE ;
 unsigned char MCHP23K256_CMD_READ ;
 int mchp23k256_addr2cmd (struct mchp23k256_flash*,int ,unsigned char*) ;
 size_t mchp23k256_cmdsz (struct mchp23k256_flash*) ;
 int memset (struct spi_transfer**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 struct mchp23k256_flash* to_mchp23k256_flash (struct mtd_info*) ;

__attribute__((used)) static int mchp23k256_read(struct mtd_info *mtd, loff_t from, size_t len,
      size_t *retlen, unsigned char *buf)
{
 struct mchp23k256_flash *flash = to_mchp23k256_flash(mtd);
 struct spi_transfer transfer[2] = {};
 struct spi_message message;
 unsigned char command[MAX_CMD_SIZE];
 int ret;

 spi_message_init(&message);

 memset(&transfer, 0, sizeof(transfer));
 command[0] = MCHP23K256_CMD_READ;
 mchp23k256_addr2cmd(flash, from, command);

 transfer[0].tx_buf = command;
 transfer[0].len = mchp23k256_cmdsz(flash);
 spi_message_add_tail(&transfer[0], &message);

 transfer[1].rx_buf = buf;
 transfer[1].len = len;
 spi_message_add_tail(&transfer[1], &message);

 mutex_lock(&flash->lock);

 ret = spi_sync(flash->spi, &message);

 mutex_unlock(&flash->lock);

 if (ret)
  return ret;

 if (retlen && message.actual_length > sizeof(command))
  *retlen += message.actual_length - sizeof(command);

 return 0;
}
