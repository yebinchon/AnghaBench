
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct hi3110_priv {int * spi_tx_buf; } ;


 int HI3110_WRITE_FIFO ;
 int hi3110_spi_trans (struct spi_device*,int) ;
 int memcpy (int *,int *,int) ;
 struct hi3110_priv* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void hi3110_hw_tx_frame(struct spi_device *spi, u8 *buf, int len)
{
 struct hi3110_priv *priv = spi_get_drvdata(spi);

 priv->spi_tx_buf[0] = HI3110_WRITE_FIFO;
 memcpy(priv->spi_tx_buf + 1, buf, len);
 hi3110_spi_trans(spi, len + 1);
}
