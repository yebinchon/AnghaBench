
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int CANCTRL ;
 int CANCTRL_REQOP_SLEEP ;
 int mcp251x_write_reg (struct spi_device*,int ,int ) ;

__attribute__((used)) static void mcp251x_hw_sleep(struct spi_device *spi)
{
 mcp251x_write_reg(spi, CANCTRL, CANCTRL_REQOP_SLEEP);
}
