
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

__attribute__((used)) static void mcp251x_read_2regs(struct spi_device *spi, u8 reg, u8 *v1, u8 *v2)
{
 struct mcp251x_priv *priv = spi_get_drvdata(spi);

 priv->spi_tx_buf[0] = INSTRUCTION_READ;
 priv->spi_tx_buf[1] = reg;

 mcp251x_spi_trans(spi, 4);

 *v1 = priv->spi_rx_buf[2];
 *v2 = priv->spi_rx_buf[3];
}
