
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {struct eeprom_93xx46_platform_data* platform_data; struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct of_device_id {struct eeprom_93xx46_devtype_data* data; } ;
struct eeprom_93xx46_platform_data {int quirks; int select; int finish; int prepare; int flags; } ;
struct eeprom_93xx46_devtype_data {int quirks; } ;
struct device_node {int dummy; } ;


 int EE_ADDR16 ;
 int EE_ADDR8 ;
 int EE_READONLY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int devm_gpiod_get_optional (TYPE_1__*,char*,int ) ;
 struct eeprom_93xx46_platform_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int eeprom_93xx46_of_table ;
 int gpiod_direction_output (int ,int ) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int select_assert ;
 int select_deassert ;

__attribute__((used)) static int eeprom_93xx46_probe_dt(struct spi_device *spi)
{
 const struct of_device_id *of_id =
  of_match_device(eeprom_93xx46_of_table, &spi->dev);
 struct device_node *np = spi->dev.of_node;
 struct eeprom_93xx46_platform_data *pd;
 u32 tmp;
 int ret;

 pd = devm_kzalloc(&spi->dev, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 ret = of_property_read_u32(np, "data-size", &tmp);
 if (ret < 0) {
  dev_err(&spi->dev, "data-size property not found\n");
  return ret;
 }

 if (tmp == 8) {
  pd->flags |= EE_ADDR8;
 } else if (tmp == 16) {
  pd->flags |= EE_ADDR16;
 } else {
  dev_err(&spi->dev, "invalid data-size (%d)\n", tmp);
  return -EINVAL;
 }

 if (of_property_read_bool(np, "read-only"))
  pd->flags |= EE_READONLY;

 pd->select = devm_gpiod_get_optional(&spi->dev, "select",
          GPIOD_OUT_LOW);
 if (IS_ERR(pd->select))
  return PTR_ERR(pd->select);

 pd->prepare = select_assert;
 pd->finish = select_deassert;
 gpiod_direction_output(pd->select, 0);

 if (of_id->data) {
  const struct eeprom_93xx46_devtype_data *data = of_id->data;

  pd->quirks = data->quirks;
 }

 spi->dev.platform_data = pd;

 return 0;
}
