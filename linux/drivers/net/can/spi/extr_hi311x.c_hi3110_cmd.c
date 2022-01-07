
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
struct hi3110_priv {int * spi_tx_buf; } ;


 int dev_dbg (int *,char*,int ) ;
 int hi3110_spi_trans (struct spi_device*,int) ;
 struct hi3110_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static u8 hi3110_cmd(struct spi_device *spi, u8 command)
{
 struct hi3110_priv *priv = spi_get_drvdata(spi);

 priv->spi_tx_buf[0] = command;
 dev_dbg(&spi->dev, "hi3110_cmd: %02X\n", command);

 return hi3110_spi_trans(spi, 1);
}
