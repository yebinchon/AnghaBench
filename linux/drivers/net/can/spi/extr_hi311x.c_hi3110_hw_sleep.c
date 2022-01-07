
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int HI3110_CTRL0_SLEEP_MODE ;
 int HI3110_WRITE_CTRL0 ;
 int hi3110_write (struct spi_device*,int ,int ) ;

__attribute__((used)) static void hi3110_hw_sleep(struct spi_device *spi)
{
 hi3110_write(spi, HI3110_WRITE_CTRL0, HI3110_CTRL0_SLEEP_MODE);
}
