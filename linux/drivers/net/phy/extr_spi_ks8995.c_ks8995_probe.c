
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int kobj; TYPE_1__* platform_data; scalar_t__ of_node; } ;
struct spi_device {int bits_per_word; TYPE_6__ dev; int mode; } ;
struct TYPE_11__ {int attr; int size; } ;
struct ks8995_switch {int revision_id; TYPE_5__* chip; TYPE_2__ regs_attr; TYPE_1__* pdata; struct spi_device* spi; int lock; } ;
struct TYPE_13__ {int chip_id; int name; int regs_size; } ;
struct TYPE_12__ {int driver_data; } ;
struct TYPE_10__ {int reset_gpio; scalar_t__ reset_gpio_flags; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long GPIOF_ACTIVE_LOW ;
 scalar_t__ OF_GPIO_ACTIVE_LOW ;
 int SPI_MODE_0 ;
 int dev_err (TYPE_6__*,char*,int) ;
 int dev_info (TYPE_6__*,char*,int ,int ,int ) ;
 int devm_gpio_request_one (TYPE_6__*,int,unsigned long,char*) ;
 void* devm_kzalloc (TYPE_6__*,int,int ) ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_to_desc (int) ;
 int gpiod_set_value (int ,int ) ;
 TYPE_5__* ks8995_chip ;
 int ks8995_get_revision (struct ks8995_switch*) ;
 int ks8995_parse_dt (struct ks8995_switch*) ;
 int ks8995_registers_attr ;
 int ks8995_reset (struct ks8995_switch*) ;
 int max_variant ;
 int memcpy (TYPE_2__*,int *,int) ;
 int mutex_init (int *) ;
 TYPE_3__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct ks8995_switch*) ;
 int spi_setup (struct spi_device*) ;
 int sysfs_attr_init (int *) ;
 int sysfs_create_bin_file (int *,TYPE_2__*) ;

__attribute__((used)) static int ks8995_probe(struct spi_device *spi)
{
 struct ks8995_switch *ks;
 int err;
 int variant = spi_get_device_id(spi)->driver_data;

 if (variant >= max_variant) {
  dev_err(&spi->dev, "bad chip variant %d\n", variant);
  return -ENODEV;
 }

 ks = devm_kzalloc(&spi->dev, sizeof(*ks), GFP_KERNEL);
 if (!ks)
  return -ENOMEM;

 mutex_init(&ks->lock);
 ks->spi = spi;
 ks->chip = &ks8995_chip[variant];

 if (ks->spi->dev.of_node) {
  ks->pdata = devm_kzalloc(&spi->dev, sizeof(*ks->pdata),
      GFP_KERNEL);
  if (!ks->pdata)
   return -ENOMEM;

  ks->pdata->reset_gpio = -1;

  ks8995_parse_dt(ks);
 }

 if (!ks->pdata)
  ks->pdata = spi->dev.platform_data;


 if (ks->pdata && gpio_is_valid(ks->pdata->reset_gpio)) {
  unsigned long flags;

  flags = (ks->pdata->reset_gpio_flags == OF_GPIO_ACTIVE_LOW ?
    GPIOF_ACTIVE_LOW : 0);

  err = devm_gpio_request_one(&spi->dev,
         ks->pdata->reset_gpio,
         flags, "switch-reset");
  if (err) {
   dev_err(&spi->dev,
    "failed to get reset-gpios: %d\n", err);
   return -EIO;
  }

  gpiod_set_value(gpio_to_desc(ks->pdata->reset_gpio), 0);
 }

 spi_set_drvdata(spi, ks);

 spi->mode = SPI_MODE_0;
 spi->bits_per_word = 8;
 err = spi_setup(spi);
 if (err) {
  dev_err(&spi->dev, "spi_setup failed, err=%d\n", err);
  return err;
 }

 err = ks8995_get_revision(ks);
 if (err)
  return err;

 memcpy(&ks->regs_attr, &ks8995_registers_attr, sizeof(ks->regs_attr));
 ks->regs_attr.size = ks->chip->regs_size;

 err = ks8995_reset(ks);
 if (err)
  return err;

 sysfs_attr_init(&ks->regs_attr.attr);
 err = sysfs_create_bin_file(&spi->dev.kobj, &ks->regs_attr);
 if (err) {
  dev_err(&spi->dev, "unable to create sysfs file, err=%d\n",
        err);
  return err;
 }

 dev_info(&spi->dev, "%s device found, Chip ID:%x, Revision:%x\n",
   ks->chip->name, ks->chip->chip_id, ks->revision_id);

 return 0;
}
