
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sram_reserve {int size; } ;
struct TYPE_4__ {int mode; int name; } ;
struct TYPE_5__ {int size; int write; int read; TYPE_1__ attr; } ;
struct sram_partition {TYPE_2__ battr; } ;
struct sram_dev {int dev; } ;
typedef scalar_t__ phys_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int S_IRUSR ;
 int S_IWUSR ;
 int device_create_bin_file (int ,TYPE_2__*) ;
 int devm_kasprintf (int ,int ,char*,unsigned long long) ;
 int sram_read ;
 int sram_write ;
 int sysfs_bin_attr_init (TYPE_2__*) ;

__attribute__((used)) static int sram_add_export(struct sram_dev *sram, struct sram_reserve *block,
      phys_addr_t start, struct sram_partition *part)
{
 sysfs_bin_attr_init(&part->battr);
 part->battr.attr.name = devm_kasprintf(sram->dev, GFP_KERNEL,
            "%llx.sram",
            (unsigned long long)start);
 if (!part->battr.attr.name)
  return -ENOMEM;

 part->battr.attr.mode = S_IRUSR | S_IWUSR;
 part->battr.read = sram_read;
 part->battr.write = sram_write;
 part->battr.size = block->size;

 return device_create_bin_file(sram->dev, &part->battr);
}
