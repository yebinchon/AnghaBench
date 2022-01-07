
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int of_node; struct at86rf230_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct at86rf230_platform_data {int rstn; int slp_tr; int xtal_trim; } ;


 int CONFIG_OF ;
 int EINVAL ;
 int ENOENT ;
 int IS_ENABLED (int ) ;
 int of_get_named_gpio (int ,char*,int ) ;
 int of_property_read_u8 (int ,char*,int *) ;

__attribute__((used)) static int
at86rf230_get_pdata(struct spi_device *spi, int *rstn, int *slp_tr,
      u8 *xtal_trim)
{
 struct at86rf230_platform_data *pdata = spi->dev.platform_data;
 int ret;

 if (!IS_ENABLED(CONFIG_OF) || !spi->dev.of_node) {
  if (!pdata)
   return -ENOENT;

  *rstn = pdata->rstn;
  *slp_tr = pdata->slp_tr;
  *xtal_trim = pdata->xtal_trim;
  return 0;
 }

 *rstn = of_get_named_gpio(spi->dev.of_node, "reset-gpio", 0);
 *slp_tr = of_get_named_gpio(spi->dev.of_node, "sleep-gpio", 0);
 ret = of_property_read_u8(spi->dev.of_node, "xtal-trim", xtal_trim);
 if (ret < 0 && ret != -EINVAL)
  return ret;

 return 0;
}
