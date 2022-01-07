
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spi_nor_hwcaps {int mask; } ;
struct TYPE_6__ {scalar_t__ name; } ;
struct spi_nor {scalar_t__ page_size; scalar_t__ bouncebuf_size; TYPE_1__ mtd; int bouncebuf; TYPE_2__* dev; struct spi_mem* spimem; } ;
struct spi_mem {struct spi_device* spi; } ;
struct TYPE_7__ {int of_node; } ;
struct spi_device {char* modalias; TYPE_2__ dev; } ;
struct flash_platform_data {char* type; int nr_parts; int * parts; scalar_t__ name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 int SNOR_HWCAPS_ALL ;
 struct flash_platform_data* dev_get_platdata (TYPE_2__*) ;
 int devm_kfree (TYPE_2__*,int ) ;
 int devm_kmalloc (TYPE_2__*,scalar_t__,int ) ;
 struct spi_nor* devm_kzalloc (TYPE_2__*,int,int ) ;
 int mtd_device_register (TYPE_1__*,int *,int ) ;
 scalar_t__ spi_mem_get_name (struct spi_mem*) ;
 int spi_mem_set_drvdata (struct spi_mem*,struct spi_nor*) ;
 int spi_nor_scan (struct spi_nor*,char*,struct spi_nor_hwcaps const*) ;
 int spi_nor_set_flash_node (struct spi_nor*,int ) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int spi_nor_probe(struct spi_mem *spimem)
{
 struct spi_device *spi = spimem->spi;
 struct flash_platform_data *data = dev_get_platdata(&spi->dev);
 struct spi_nor *nor;




 const struct spi_nor_hwcaps hwcaps = { .mask = SNOR_HWCAPS_ALL };
 char *flash_name;
 int ret;

 nor = devm_kzalloc(&spi->dev, sizeof(*nor), GFP_KERNEL);
 if (!nor)
  return -ENOMEM;

 nor->spimem = spimem;
 nor->dev = &spi->dev;
 spi_nor_set_flash_node(nor, spi->dev.of_node);

 spi_mem_set_drvdata(spimem, nor);

 if (data && data->name)
  nor->mtd.name = data->name;

 if (!nor->mtd.name)
  nor->mtd.name = spi_mem_get_name(spimem);







 if (data && data->type)
  flash_name = data->type;
 else if (!strcmp(spi->modalias, "spi-nor"))
  flash_name = ((void*)0);
 else
  flash_name = spi->modalias;

 ret = spi_nor_scan(nor, flash_name, &hwcaps);
 if (ret)
  return ret;






 if (nor->page_size > PAGE_SIZE) {
  nor->bouncebuf_size = nor->page_size;
  devm_kfree(nor->dev, nor->bouncebuf);
  nor->bouncebuf = devm_kmalloc(nor->dev,
           nor->bouncebuf_size,
           GFP_KERNEL);
  if (!nor->bouncebuf)
   return -ENOMEM;
 }

 return mtd_device_register(&nor->mtd, data ? data->parts : ((void*)0),
       data ? data->nr_parts : 0);
}
