
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int transfer ;
struct spi_transfer {int len; int * tx_buf; } ;
struct spi_message {int status; } ;
struct qcaspi {int spi_dev; } ;
typedef int cmd ;
typedef int __be16 ;


 int cpu_to_be16 (int ) ;
 int memset (struct spi_transfer*,int ,int) ;
 int qcaspi_spi_error (struct qcaspi*) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

__attribute__((used)) static int
qcaspi_tx_cmd(struct qcaspi *qca, u16 cmd)
{
 __be16 tx_data;
 struct spi_message msg;
 struct spi_transfer transfer;
 int ret;

 memset(&transfer, 0, sizeof(transfer));

 spi_message_init(&msg);

 tx_data = cpu_to_be16(cmd);
 transfer.len = sizeof(cmd);
 transfer.tx_buf = &tx_data;
 spi_message_add_tail(&transfer, &msg);

 ret = spi_sync(qca->spi_dev, &msg);

 if (!ret)
  ret = msg.status;

 if (ret)
  qcaspi_spi_error(qca);

 return ret;
}
