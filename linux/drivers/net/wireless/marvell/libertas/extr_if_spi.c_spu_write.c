
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int len; int const* tx_buf; } ;
struct spi_message {int dummy; } ;
struct if_spi_card {int spi; } ;
typedef int reg_trans ;
typedef int reg_out ;
typedef int data_trans ;
typedef int const __le16 ;


 int BUG_ON (int) ;
 int IF_SPI_WRITE_OPERATION_MASK ;
 int const cpu_to_le16 (int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int spu_transaction_finish (struct if_spi_card*) ;
 int spu_transaction_init (struct if_spi_card*) ;

__attribute__((used)) static int spu_write(struct if_spi_card *card, u16 reg, const u8 *buf, int len)
{
 int err = 0;
 __le16 reg_out = cpu_to_le16(reg | IF_SPI_WRITE_OPERATION_MASK);
 struct spi_message m;
 struct spi_transfer reg_trans;
 struct spi_transfer data_trans;

 spi_message_init(&m);
 memset(&reg_trans, 0, sizeof(reg_trans));
 memset(&data_trans, 0, sizeof(data_trans));



 BUG_ON(len & 0x1);

 spu_transaction_init(card);


 reg_trans.tx_buf = &reg_out;
 reg_trans.len = sizeof(reg_out);

 data_trans.tx_buf = buf;
 data_trans.len = len;

 spi_message_add_tail(&reg_trans, &m);
 spi_message_add_tail(&data_trans, &m);

 err = spi_sync(card->spi, &m);
 spu_transaction_finish(card);
 return err;
}
