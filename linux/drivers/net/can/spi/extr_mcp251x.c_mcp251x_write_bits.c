
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct spi_device {int dummy; } ;
struct mcp251x_priv {void** spi_tx_buf; } ;


 void* INSTRUCTION_BIT_MODIFY ;
 int mcp251x_spi_trans (struct spi_device*,int) ;
 struct mcp251x_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void mcp251x_write_bits(struct spi_device *spi, u8 reg,
          u8 mask, u8 val)
{
 struct mcp251x_priv *priv = spi_get_drvdata(spi);

 priv->spi_tx_buf[0] = INSTRUCTION_BIT_MODIFY;
 priv->spi_tx_buf[1] = reg;
 priv->spi_tx_buf[2] = mask;
 priv->spi_tx_buf[3] = val;

 mcp251x_spi_trans(spi, 4);
}
