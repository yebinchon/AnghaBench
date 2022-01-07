
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct spi_eeprom {int flags; int byte_len; int page_size; int name; } ;
struct TYPE_8__ {scalar_t__ platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct TYPE_9__ {int read_only; int root_only; int compat; int stride; int word_size; int size; struct at25_data* priv; int reg_write; int reg_read; TYPE_1__* base_dev; int owner; TYPE_1__* dev; int name; } ;
struct at25_data {int addrlen; struct spi_eeprom chip; int nvmem; TYPE_2__ nvmem_config; struct spi_device* spi; int lock; } ;


 int AT25_RDSR ;
 int AT25_SR_nRDY ;
 int EE_ADDR1 ;
 int EE_ADDR2 ;
 int EE_ADDR3 ;
 int EE_READONLY ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int at25_ee_read ;
 int at25_ee_write ;
 int at25_fw_to_chip (TYPE_1__*,struct spi_eeprom*) ;
 int dev_dbg (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*,int,char*,int ,char*,int ) ;
 int dev_name (TYPE_1__*) ;
 struct at25_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_nvmem_register (TYPE_1__*,TYPE_2__*) ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct at25_data*) ;
 int spi_w8r8 (struct spi_device*,int ) ;

__attribute__((used)) static int at25_probe(struct spi_device *spi)
{
 struct at25_data *at25 = ((void*)0);
 struct spi_eeprom chip;
 int err;
 int sr;
 int addrlen;


 if (!spi->dev.platform_data) {
  err = at25_fw_to_chip(&spi->dev, &chip);
  if (err)
   return err;
 } else
  chip = *(struct spi_eeprom *)spi->dev.platform_data;


 if (chip.flags & EE_ADDR1)
  addrlen = 1;
 else if (chip.flags & EE_ADDR2)
  addrlen = 2;
 else if (chip.flags & EE_ADDR3)
  addrlen = 3;
 else {
  dev_dbg(&spi->dev, "unsupported address type\n");
  return -EINVAL;
 }





 sr = spi_w8r8(spi, AT25_RDSR);
 if (sr < 0 || sr & AT25_SR_nRDY) {
  dev_dbg(&spi->dev, "rdsr --> %d (%02x)\n", sr, sr);
  return -ENXIO;
 }

 at25 = devm_kzalloc(&spi->dev, sizeof(struct at25_data), GFP_KERNEL);
 if (!at25)
  return -ENOMEM;

 mutex_init(&at25->lock);
 at25->chip = chip;
 at25->spi = spi;
 spi_set_drvdata(spi, at25);
 at25->addrlen = addrlen;

 at25->nvmem_config.name = dev_name(&spi->dev);
 at25->nvmem_config.dev = &spi->dev;
 at25->nvmem_config.read_only = chip.flags & EE_READONLY;
 at25->nvmem_config.root_only = 1;
 at25->nvmem_config.owner = THIS_MODULE;
 at25->nvmem_config.compat = 1;
 at25->nvmem_config.base_dev = &spi->dev;
 at25->nvmem_config.reg_read = at25_ee_read;
 at25->nvmem_config.reg_write = at25_ee_write;
 at25->nvmem_config.priv = at25;
 at25->nvmem_config.stride = 4;
 at25->nvmem_config.word_size = 1;
 at25->nvmem_config.size = chip.byte_len;

 at25->nvmem = devm_nvmem_register(&spi->dev, &at25->nvmem_config);
 if (IS_ERR(at25->nvmem))
  return PTR_ERR(at25->nvmem);

 dev_info(&spi->dev, "%d %s %s eeprom%s, pagesize %u\n",
  (chip.byte_len < 1024) ? chip.byte_len : (chip.byte_len / 1024),
  (chip.byte_len < 1024) ? "Byte" : "KByte",
  at25->chip.name,
  (chip.flags & EE_READONLY) ? " (readonly)" : "",
  at25->chip.page_size);
 return 0;
}
