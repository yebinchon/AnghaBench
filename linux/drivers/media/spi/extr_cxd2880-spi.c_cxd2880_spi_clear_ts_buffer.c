
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;


 int cxd2880_write_spi (struct spi_device*,int*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_spi_clear_ts_buffer(struct spi_device *spi)
{
 u8 data = 0x03;
 int ret;

 ret = cxd2880_write_spi(spi, &data, 1);

 if (ret)
  pr_err("write spi failed\n");

 return ret;
}
