
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int transfer ;
struct spi_transfer {scalar_t__ len; int * tx_buf; } ;
struct spi_message {scalar_t__ actual_length; } ;
struct qcaspi {int spi_dev; } ;


 int memset (struct spi_transfer*,int ,int) ;
 int qcaspi_spi_error (struct qcaspi*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static u32
qcaspi_write_legacy(struct qcaspi *qca, u8 *src, u32 len)
{
 struct spi_message msg;
 struct spi_transfer transfer;
 int ret;

 memset(&transfer, 0, sizeof(transfer));
 spi_message_init(&msg);

 transfer.tx_buf = src;
 transfer.len = len;

 spi_message_add_tail(&transfer, &msg);
 ret = spi_sync(qca->spi_dev, &msg);

 if (ret || (msg.actual_length != len)) {
  qcaspi_spi_error(qca);
  return 0;
 }

 return len;
}
