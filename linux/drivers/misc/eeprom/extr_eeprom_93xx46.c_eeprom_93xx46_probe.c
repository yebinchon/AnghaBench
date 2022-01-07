
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct eeprom_93xx46_platform_data* platform_data; scalar_t__ of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct eeprom_93xx46_platform_data {int flags; } ;
struct TYPE_9__ {int read_only; int root_only; int compat; int stride; int word_size; int size; struct eeprom_93xx46_dev* priv; int reg_write; int reg_read; TYPE_1__* base_dev; int owner; TYPE_1__* dev; int name; } ;
struct eeprom_93xx46_dev {int addrlen; int size; int nvmem; TYPE_2__ nvmem_config; struct eeprom_93xx46_platform_data* pdata; struct spi_device* spi; int lock; } ;


 int EE_ADDR16 ;
 int EE_ADDR8 ;
 int EE_READONLY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_attr_erase ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int,char*) ;
 int dev_name (TYPE_1__*) ;
 scalar_t__ device_create_file (TYPE_1__*,int *) ;
 struct eeprom_93xx46_dev* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_nvmem_register (TYPE_1__*,TYPE_2__*) ;
 int eeprom_93xx46_probe_dt (struct spi_device*) ;
 int eeprom_93xx46_read ;
 int eeprom_93xx46_write ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct eeprom_93xx46_dev*) ;

__attribute__((used)) static int eeprom_93xx46_probe(struct spi_device *spi)
{
 struct eeprom_93xx46_platform_data *pd;
 struct eeprom_93xx46_dev *edev;
 int err;

 if (spi->dev.of_node) {
  err = eeprom_93xx46_probe_dt(spi);
  if (err < 0)
   return err;
 }

 pd = spi->dev.platform_data;
 if (!pd) {
  dev_err(&spi->dev, "missing platform data\n");
  return -ENODEV;
 }

 edev = devm_kzalloc(&spi->dev, sizeof(*edev), GFP_KERNEL);
 if (!edev)
  return -ENOMEM;

 if (pd->flags & EE_ADDR8)
  edev->addrlen = 7;
 else if (pd->flags & EE_ADDR16)
  edev->addrlen = 6;
 else {
  dev_err(&spi->dev, "unspecified address type\n");
  return -EINVAL;
 }

 mutex_init(&edev->lock);

 edev->spi = spi;
 edev->pdata = pd;

 edev->size = 128;
 edev->nvmem_config.name = dev_name(&spi->dev);
 edev->nvmem_config.dev = &spi->dev;
 edev->nvmem_config.read_only = pd->flags & EE_READONLY;
 edev->nvmem_config.root_only = 1;
 edev->nvmem_config.owner = THIS_MODULE;
 edev->nvmem_config.compat = 1;
 edev->nvmem_config.base_dev = &spi->dev;
 edev->nvmem_config.reg_read = eeprom_93xx46_read;
 edev->nvmem_config.reg_write = eeprom_93xx46_write;
 edev->nvmem_config.priv = edev;
 edev->nvmem_config.stride = 4;
 edev->nvmem_config.word_size = 1;
 edev->nvmem_config.size = edev->size;

 edev->nvmem = devm_nvmem_register(&spi->dev, &edev->nvmem_config);
 if (IS_ERR(edev->nvmem))
  return PTR_ERR(edev->nvmem);

 dev_info(&spi->dev, "%d-bit eeprom %s\n",
  (pd->flags & EE_ADDR8) ? 8 : 16,
  (pd->flags & EE_READONLY) ? "(readonly)" : "");

 if (!(pd->flags & EE_READONLY)) {
  if (device_create_file(&spi->dev, &dev_attr_erase))
   dev_err(&spi->dev, "can't create erase interface\n");
 }

 spi_set_drvdata(spi, edev);
 return 0;
}
