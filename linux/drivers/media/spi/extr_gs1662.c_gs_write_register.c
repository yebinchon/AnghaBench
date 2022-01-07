
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct spi_transfer {int len; int delay_usecs; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;


 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int gs_write_register(struct spi_device *spi, u16 addr, u16 value)
{
 int ret;
 u16 buf_addr = addr;
 u16 buf_value = value;
 struct spi_message msg;
 struct spi_transfer tx[] = {
  {
   .tx_buf = &buf_addr,
   .len = 2,
   .delay_usecs = 1,
  }, {
   .tx_buf = &buf_value,
   .len = 2,
   .delay_usecs = 1,
  },
 };

 spi_message_init(&msg);
 spi_message_add_tail(&tx[0], &msg);
 spi_message_add_tail(&tx[1], &msg);
 ret = spi_sync(spi, &msg);

 return ret;
}
