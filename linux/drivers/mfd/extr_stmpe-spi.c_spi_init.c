
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmpe {TYPE_1__* variant; struct spi_device* client; } ;
struct spi_device {int bits_per_word; int dev; int mode; } ;
struct TYPE_2__ {int id_val; } ;


 int STMPE811_REG_SPI_CFG ;
 int dev_dbg (int *,char*) ;
 int spi_reg_write (struct stmpe*,int ,int ) ;
 scalar_t__ spi_setup (struct spi_device*) ;

__attribute__((used)) static void spi_init(struct stmpe *stmpe)
{
 struct spi_device *spi = stmpe->client;

 spi->bits_per_word = 8;


 if (stmpe->variant->id_val == 0x0811)
  spi_reg_write(stmpe, STMPE811_REG_SPI_CFG, spi->mode);

 if (spi_setup(spi) < 0)
  dev_dbg(&spi->dev, "spi_setup failed\n");
}
