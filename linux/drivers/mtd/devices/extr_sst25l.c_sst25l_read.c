
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int transfer ;
struct sst25l_flash {int lock; int spi; } ;
struct spi_transfer {unsigned char* tx_buf; int len; unsigned char* rx_buf; } ;
struct spi_message {int actual_length; } ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;
typedef int command ;


 unsigned char SST25L_CMD_READ ;
 int memset (struct spi_transfer**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int sst25l_wait_till_ready (struct sst25l_flash*) ;
 struct sst25l_flash* to_sst25l_flash (struct mtd_info*) ;

__attribute__((used)) static int sst25l_read(struct mtd_info *mtd, loff_t from, size_t len,
         size_t *retlen, unsigned char *buf)
{
 struct sst25l_flash *flash = to_sst25l_flash(mtd);
 struct spi_transfer transfer[2];
 struct spi_message message;
 unsigned char command[4];
 int ret;

 spi_message_init(&message);
 memset(&transfer, 0, sizeof(transfer));

 command[0] = SST25L_CMD_READ;
 command[1] = from >> 16;
 command[2] = from >> 8;
 command[3] = from;

 transfer[0].tx_buf = command;
 transfer[0].len = sizeof(command);
 spi_message_add_tail(&transfer[0], &message);

 transfer[1].rx_buf = buf;
 transfer[1].len = len;
 spi_message_add_tail(&transfer[1], &message);

 mutex_lock(&flash->lock);


 ret = sst25l_wait_till_ready(flash);
 if (ret) {
  mutex_unlock(&flash->lock);
  return ret;
 }

 spi_sync(flash->spi, &message);

 if (retlen && message.actual_length > sizeof(command))
  *retlen += message.actual_length - sizeof(command);

 mutex_unlock(&flash->lock);
 return 0;
}
