
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_nor {struct hifmc_priv* priv; } ;
struct hifmc_priv {struct hifmc_host* host; } ;
struct hifmc_host {int iobase; } ;


 int FMC_OP_WRITE_DATA_EN ;
 int hisi_spi_nor_op_reg (struct spi_nor*,int ,int,int ) ;
 int memcpy_toio (int ,int *,int) ;

__attribute__((used)) static int hisi_spi_nor_write_reg(struct spi_nor *nor, u8 opcode,
    u8 *buf, int len)
{
 struct hifmc_priv *priv = nor->priv;
 struct hifmc_host *host = priv->host;

 if (len)
  memcpy_toio(host->iobase, buf, len);

 return hisi_spi_nor_op_reg(nor, opcode, len, FMC_OP_WRITE_DATA_EN);
}
