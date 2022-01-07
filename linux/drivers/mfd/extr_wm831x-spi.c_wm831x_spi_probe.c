
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wm831x_pdata {int dummy; } ;
struct wm831x {int type; int pdata; TYPE_1__* dev; int regmap; } ;
struct spi_device_id {scalar_t__ driver_data; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct spi_device {int irq; TYPE_1__ dev; int mode; } ;
struct of_device_id {scalar_t__ data; } ;
typedef enum wm831x_parent { ____Placeholder_wm831x_parent } wm831x_parent ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_MODE_0 ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct wm831x_pdata* dev_get_platdata (TYPE_1__*) ;
 struct wm831x* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_spi (struct spi_device*,int *) ;
 int memcpy (int *,struct wm831x_pdata*,int) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct wm831x*) ;
 int wm831x_device_init (struct wm831x*,int ) ;
 int wm831x_of_match ;
 int wm831x_regmap_config ;

__attribute__((used)) static int wm831x_spi_probe(struct spi_device *spi)
{
 struct wm831x_pdata *pdata = dev_get_platdata(&spi->dev);
 const struct spi_device_id *id = spi_get_device_id(spi);
 const struct of_device_id *of_id;
 struct wm831x *wm831x;
 enum wm831x_parent type;
 int ret;

 if (spi->dev.of_node) {
  of_id = of_match_device(wm831x_of_match, &spi->dev);
  if (!of_id) {
   dev_err(&spi->dev, "Failed to match device\n");
   return -ENODEV;
  }
  type = (enum wm831x_parent)of_id->data;
 } else {
  type = (enum wm831x_parent)id->driver_data;
 }

 wm831x = devm_kzalloc(&spi->dev, sizeof(struct wm831x), GFP_KERNEL);
 if (wm831x == ((void*)0))
  return -ENOMEM;

 spi->mode = SPI_MODE_0;

 spi_set_drvdata(spi, wm831x);
 wm831x->dev = &spi->dev;
 wm831x->type = type;

 wm831x->regmap = devm_regmap_init_spi(spi, &wm831x_regmap_config);
 if (IS_ERR(wm831x->regmap)) {
  ret = PTR_ERR(wm831x->regmap);
  dev_err(wm831x->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 if (pdata)
  memcpy(&wm831x->pdata, pdata, sizeof(*pdata));

 return wm831x_device_init(wm831x, spi->irq);
}
