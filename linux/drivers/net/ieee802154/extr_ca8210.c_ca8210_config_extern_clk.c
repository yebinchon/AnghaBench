
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dev; } ;
struct ca8210_platform_data {int extclockfreq; int extclockgpio; } ;



 int EINVAL ;

 int HWME_SYSCLKOUT ;



 int dev_crit (int *,char*) ;
 int dev_info (int *,char*) ;
 int hwme_set_request_sync (int ,int,int*,struct spi_device*) ;
 int link_to_linux_err (int ) ;

__attribute__((used)) static int ca8210_config_extern_clk(
 struct ca8210_platform_data *pdata,
 struct spi_device *spi,
 bool on
)
{
 u8 clkparam[2];

 if (on) {
  dev_info(&spi->dev, "Switching external clock on\n");
  switch (pdata->extclockfreq) {
  case 129:
   clkparam[0] = 1;
   break;
  case 132:
   clkparam[0] = 2;
   break;
  case 131:
   clkparam[0] = 3;
   break;
  case 128:
   clkparam[0] = 4;
   break;
  case 130:
   clkparam[0] = 5;
   break;
  default:
   dev_crit(&spi->dev, "Invalid extclock-freq\n");
   return -EINVAL;
  }
  clkparam[1] = pdata->extclockgpio;
 } else {
  dev_info(&spi->dev, "Switching external clock off\n");
  clkparam[0] = 0;
  clkparam[1] = 0;
 }
 return link_to_linux_err(
  hwme_set_request_sync(HWME_SYSCLKOUT, 2, clkparam, spi)
 );
}
