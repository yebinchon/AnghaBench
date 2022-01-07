
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {int writesize; int size; int erasesize; scalar_t__ name; int _write; int _read; int _erase; int writebufsize; int flags; int type; TYPE_1__ dev; struct spear_smi* priv; } ;
struct spear_snor_flash {int bank; int fast_mode; TYPE_3__ mtd; int dev_id; int erase_cmd; int page_size; int base_addr; int lock; } ;
struct spear_smi_plat_data {int num_flashes; struct spear_smi_flash_info* board_flash_info; } ;
struct spear_smi_flash_info {int size; int nr_partitions; struct mtd_partition* partitions; scalar_t__ name; int mem_base; scalar_t__ fast_mode; } ;
struct spear_smi {TYPE_2__* pdev; struct spear_snor_flash** flash; } ;
struct platform_device {int dev; } ;
struct mtd_partition {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int sectorsize; int device_id; int erase_cmd; int pagesize; scalar_t__ name; } ;
struct TYPE_7__ {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int MTD_CAP_NORFLASH ;
 int MTD_NORFLASH ;
 int dev_err (int *,char*,int) ;
 struct spear_smi_plat_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int,...) ;
 int devm_ioremap (int *,int ,int) ;
 struct spear_snor_flash* devm_kzalloc (int *,int,int ) ;
 TYPE_5__* flash_devices ;
 int mtd_device_register (TYPE_3__*,struct mtd_partition*,int) ;
 int mtd_set_of_node (TYPE_3__*,struct device_node*) ;
 int mutex_init (int *) ;
 struct spear_smi* platform_get_drvdata (struct platform_device*) ;
 int spear_mtd_erase ;
 int spear_mtd_read ;
 int spear_mtd_write ;
 int spear_smi_probe_flash (struct spear_smi*,int) ;

__attribute__((used)) static int spear_smi_setup_banks(struct platform_device *pdev,
     u32 bank, struct device_node *np)
{
 struct spear_smi *dev = platform_get_drvdata(pdev);
 struct spear_smi_flash_info *flash_info;
 struct spear_smi_plat_data *pdata;
 struct spear_snor_flash *flash;
 struct mtd_partition *parts = ((void*)0);
 int count = 0;
 int flash_index;
 int ret = 0;

 pdata = dev_get_platdata(&pdev->dev);
 if (bank > pdata->num_flashes - 1)
  return -EINVAL;

 flash_info = &pdata->board_flash_info[bank];
 if (!flash_info)
  return -ENODEV;

 flash = devm_kzalloc(&pdev->dev, sizeof(*flash), GFP_ATOMIC);
 if (!flash)
  return -ENOMEM;
 flash->bank = bank;
 flash->fast_mode = flash_info->fast_mode ? 1 : 0;
 mutex_init(&flash->lock);


 flash_index = spear_smi_probe_flash(dev, bank);
 if (flash_index < 0) {
  dev_info(&dev->pdev->dev, "smi-nor%d not found\n", bank);
  return flash_index;
 }

 flash->base_addr = devm_ioremap(&pdev->dev, flash_info->mem_base,
     flash_info->size);
 if (!flash->base_addr)
  return -EIO;

 dev->flash[bank] = flash;
 flash->mtd.priv = dev;

 if (flash_info->name)
  flash->mtd.name = flash_info->name;
 else
  flash->mtd.name = flash_devices[flash_index].name;

 flash->mtd.dev.parent = &pdev->dev;
 mtd_set_of_node(&flash->mtd, np);
 flash->mtd.type = MTD_NORFLASH;
 flash->mtd.writesize = 1;
 flash->mtd.flags = MTD_CAP_NORFLASH;
 flash->mtd.size = flash_info->size;
 flash->mtd.erasesize = flash_devices[flash_index].sectorsize;
 flash->page_size = flash_devices[flash_index].pagesize;
 flash->mtd.writebufsize = flash->page_size;
 flash->erase_cmd = flash_devices[flash_index].erase_cmd;
 flash->mtd._erase = spear_mtd_erase;
 flash->mtd._read = spear_mtd_read;
 flash->mtd._write = spear_mtd_write;
 flash->dev_id = flash_devices[flash_index].device_id;

 dev_info(&dev->pdev->dev, "mtd .name=%s .size=%llx(%lluM)\n",
   flash->mtd.name, flash->mtd.size,
   flash->mtd.size / (1024 * 1024));

 dev_info(&dev->pdev->dev, ".erasesize = 0x%x(%uK)\n",
   flash->mtd.erasesize, flash->mtd.erasesize / 1024);


 if (flash_info->partitions) {
  parts = flash_info->partitions;
  count = flash_info->nr_partitions;
 }


 ret = mtd_device_register(&flash->mtd, parts, count);
 if (ret) {
  dev_err(&dev->pdev->dev, "Err MTD partition=%d\n", ret);
  return ret;
 }

 return 0;
}
