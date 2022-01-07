
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {unsigned char* tx_buf; int len; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;
typedef int command ;


 unsigned char MCHP23K256_CMD_WRITE_STATUS ;
 unsigned char MCHP23K256_MODE_SEQ ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int mchp23k256_set_mode(struct spi_device *spi)
{
 struct spi_transfer transfer = {};
 struct spi_message message;
 unsigned char command[2];

 spi_message_init(&message);

 command[0] = MCHP23K256_CMD_WRITE_STATUS;
 command[1] = MCHP23K256_MODE_SEQ;

 transfer.tx_buf = command;
 transfer.len = sizeof(command);
 spi_message_add_tail(&transfer, &message);

 return spi_sync(spi, &message);
}
