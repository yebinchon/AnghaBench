
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int transfer ;
struct spi_transfer {void* len; int * rx_buf; int * tx_buf; } ;
struct spi_message {int status; } ;
struct qcaspi {int spi_dev; scalar_t__ legacy_mode; } ;
typedef int __be16 ;


 int QCA7K_SPI_INTERNAL ;
 int QCA7K_SPI_READ ;
 void* QCASPI_CMD_LEN ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int qcaspi_spi_error (struct qcaspi*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

int
qcaspi_read_register(struct qcaspi *qca, u16 reg, u16 *result)
{
 __be16 rx_data;
 __be16 tx_data;
 struct spi_transfer transfer[2];
 struct spi_message msg;
 int ret;

 memset(transfer, 0, sizeof(transfer));

 spi_message_init(&msg);

 tx_data = cpu_to_be16(QCA7K_SPI_READ | QCA7K_SPI_INTERNAL | reg);
 *result = 0;

 transfer[0].tx_buf = &tx_data;
 transfer[0].len = QCASPI_CMD_LEN;
 transfer[1].rx_buf = &rx_data;
 transfer[1].len = QCASPI_CMD_LEN;

 spi_message_add_tail(&transfer[0], &msg);

 if (qca->legacy_mode) {
  spi_sync(qca->spi_dev, &msg);
  spi_message_init(&msg);
 }
 spi_message_add_tail(&transfer[1], &msg);
 ret = spi_sync(qca->spi_dev, &msg);

 if (!ret)
  ret = msg.status;

 if (ret)
  qcaspi_spi_error(qca);
 else
  *result = be16_to_cpu(rx_data);

 return ret;
}
