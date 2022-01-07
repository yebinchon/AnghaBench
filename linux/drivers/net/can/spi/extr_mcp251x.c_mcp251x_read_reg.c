
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct mcp251x_priv {int * spi_rx_buf; int * spi_tx_buf; } ;


 int INSTRUCTION_READ ;
 int mcp251x_spi_trans (struct spi_device*,int) ;
 struct mcp251x_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static u8 mcp251x_read_reg(struct spi_device *spi, u8 reg)
{
 struct mcp251x_priv *priv = spi_get_drvdata(spi);
 u8 val = 0;

 priv->spi_tx_buf[0] = INSTRUCTION_READ;
 priv->spi_tx_buf[1] = reg;

 mcp251x_spi_trans(spi, 3);
 val = priv->spi_rx_buf[2];

 return val;
}
