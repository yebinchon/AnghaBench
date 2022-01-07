
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int ENODEV ;
 int HI3110_READ_STATF ;
 int dev_dbg (int *,char*,int) ;
 int hi3110_hw_reset (struct spi_device*) ;
 int hi3110_read (struct spi_device*,int ) ;

__attribute__((used)) static int hi3110_hw_probe(struct spi_device *spi)
{
 u8 statf;

 hi3110_hw_reset(spi);




 statf = hi3110_read(spi, HI3110_READ_STATF);

 dev_dbg(&spi->dev, "statf: %02X\n", statf);

 if (statf != 0x82)
  return -ENODEV;

 return 0;
}
