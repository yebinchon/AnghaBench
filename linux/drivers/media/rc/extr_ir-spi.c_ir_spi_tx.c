
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfer ;
typedef int u16 ;
struct spi_transfer {int speed_hz; unsigned int len; int * tx_buf; } ;
struct rc_dev {struct ir_spi_data* priv; } ;
struct ir_spi_data {unsigned int freq; int regulator; TYPE_1__* spi; int * tx_buf; int pulse; int space; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int EINVAL ;
 unsigned int IR_SPI_MAX_BUFSIZE ;
 int dev_err (int *,char*) ;
 int memset (struct spi_transfer*,int ,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int spi_sync_transfer (TYPE_1__*,struct spi_transfer*,int) ;

__attribute__((used)) static int ir_spi_tx(struct rc_dev *dev,
       unsigned int *buffer, unsigned int count)
{
 int i;
 int ret;
 unsigned int len = 0;
 struct ir_spi_data *idata = dev->priv;
 struct spi_transfer xfer;


 for (i = 0; i < count; i++) {
  unsigned int periods;
  int j;
  u16 val;

  periods = DIV_ROUND_CLOSEST(buffer[i] * idata->freq, 1000000);

  if (len + periods >= IR_SPI_MAX_BUFSIZE)
   return -EINVAL;






  val = (i % 2) ? idata->space : idata->pulse;
  for (j = 0; j < periods; j++)
   idata->tx_buf[len++] = val;
 }

 memset(&xfer, 0, sizeof(xfer));

 xfer.speed_hz = idata->freq * 16;
 xfer.len = len * sizeof(*idata->tx_buf);
 xfer.tx_buf = idata->tx_buf;

 ret = regulator_enable(idata->regulator);
 if (ret)
  return ret;

 ret = spi_sync_transfer(idata->spi, &xfer, 1);
 if (ret)
  dev_err(&idata->spi->dev, "unable to deliver the signal\n");

 regulator_disable(idata->regulator);

 return ret ? ret : count;
}
