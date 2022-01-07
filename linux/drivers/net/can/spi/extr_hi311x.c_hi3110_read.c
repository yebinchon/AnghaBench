
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct hi3110_priv {int * spi_rx_buf; int * spi_tx_buf; } ;


 int hi3110_spi_trans (struct spi_device*,int) ;
 struct hi3110_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static u8 hi3110_read(struct spi_device *spi, u8 command)
{
 struct hi3110_priv *priv = spi_get_drvdata(spi);
 u8 val = 0;

 priv->spi_tx_buf[0] = command;
 hi3110_spi_trans(spi, 2);
 val = priv->spi_rx_buf[1];

 return val;
}
