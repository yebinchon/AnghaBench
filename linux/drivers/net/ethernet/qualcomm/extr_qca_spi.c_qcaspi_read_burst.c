
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int transfer ;
struct spi_transfer {scalar_t__ len; int * rx_buf; int * tx_buf; } ;
struct spi_message {scalar_t__ actual_length; } ;
struct qcaspi {int spi_dev; } ;
typedef int __be16 ;


 int QCA7K_SPI_EXTERNAL ;
 int QCA7K_SPI_READ ;
 scalar_t__ QCASPI_CMD_LEN ;
 int cpu_to_be16 (int) ;
 int memset (struct spi_transfer**,int ,int) ;
 int qcaspi_spi_error (struct qcaspi*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static u32
qcaspi_read_burst(struct qcaspi *qca, u8 *dst, u32 len)
{
 struct spi_message msg;
 __be16 cmd;
 struct spi_transfer transfer[2];
 int ret;

 memset(&transfer, 0, sizeof(transfer));
 spi_message_init(&msg);

 cmd = cpu_to_be16(QCA7K_SPI_READ | QCA7K_SPI_EXTERNAL);
 transfer[0].tx_buf = &cmd;
 transfer[0].len = QCASPI_CMD_LEN;
 transfer[1].rx_buf = dst;
 transfer[1].len = len;

 spi_message_add_tail(&transfer[0], &msg);
 spi_message_add_tail(&transfer[1], &msg);
 ret = spi_sync(qca->spi_dev, &msg);

 if (ret || (msg.actual_length != QCASPI_CMD_LEN + len)) {
  qcaspi_spi_error(qca);
  return 0;
 }

 return len;
}
