
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;


 int CANCTRL ;
 int ENODEV ;
 int dev_dbg (int *,char*,int) ;
 int mcp251x_hw_reset (struct spi_device*) ;
 int mcp251x_read_reg (struct spi_device*,int ) ;

__attribute__((used)) static int mcp251x_hw_probe(struct spi_device *spi)
{
 u8 ctrl;
 int ret;

 ret = mcp251x_hw_reset(spi);
 if (ret)
  return ret;

 ctrl = mcp251x_read_reg(spi, CANCTRL);

 dev_dbg(&spi->dev, "CANCTRL 0x%02x\n", ctrl);


 if ((ctrl & 0x17) != 0x07)
  return -ENODEV;

 return 0;
}
