
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct spi_transfer {int len; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct spi_device {int dummy; } ;


 int EINVAL ;
 int pr_err (char*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (struct spi_device*,struct spi_message*) ;

__attribute__((used)) static int cxd2880_write_spi(struct spi_device *spi, u8 *data, u32 size)
{
 struct spi_message msg;
 struct spi_transfer tx = {};

 if (!spi || !data) {
  pr_err("invalid arg\n");
  return -EINVAL;
 }

 tx.tx_buf = data;
 tx.len = size;

 spi_message_init(&msg);
 spi_message_add_tail(&tx, &msg);

 return spi_sync(spi, &msg);
}
