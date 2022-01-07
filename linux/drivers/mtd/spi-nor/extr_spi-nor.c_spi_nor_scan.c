
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_nor_hwcaps {int dummy; } ;
struct spi_nor_flash_parameter {int size; int page_size; scalar_t__ locking_ops; } ;
struct TYPE_3__ {struct device* parent; } ;
struct mtd_info {int writesize; int size; int erasesize; int numeraseregions; TYPE_2__* eraseregions; scalar_t__ name; int writebufsize; TYPE_1__ dev; int flags; int _write; int _is_locked; int _unlock; int _lock; int _resume; int _read; int _erase; int type; struct spi_nor* priv; } ;
struct spi_nor {int flags; int page_size; struct spi_nor_flash_parameter params; int clear_sr_bp; struct flash_info const* info; int lock; int bouncebuf; int bouncebuf_size; void* write_proto; void* read_proto; void* reg_proto; struct mtd_info mtd; struct device* dev; } ;
struct flash_info {int flags; int name; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int erasesize; int numblocks; scalar_t__ offset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct flash_info const*) ;
 scalar_t__ JEDEC_MFR (struct flash_info const*) ;
 int MTD_CAP_NORFLASH ;
 int MTD_NORFLASH ;
 int MTD_NO_ERASE ;
 int NO_CHIP_ERASE ;
 int PAGE_SIZE ;
 int PTR_ERR (struct flash_info const*) ;
 int SNOR_F_4B_OPCODES ;
 int SNOR_F_BROKEN_RESET ;
 int SNOR_F_HAS_LOCK ;
 int SNOR_F_HAS_SR_TB ;
 int SNOR_F_NO_OP_CHIP_ERASE ;
 int SNOR_F_READY_XSR_RDY ;
 int SNOR_F_USE_CLSR ;
 int SNOR_F_USE_FSR ;
 scalar_t__ SNOR_MFR_ATMEL ;
 scalar_t__ SNOR_MFR_INTEL ;
 scalar_t__ SNOR_MFR_SST ;
 void* SNOR_PROTO_1_1_1 ;
 int SPI_NOR_4B_OPCODES ;
 int SPI_NOR_HAS_LOCK ;
 int SPI_NOR_HAS_TB ;
 int SPI_NOR_NO_ERASE ;
 int SPI_NOR_XSR_RDY ;
 int SST_WRITE ;
 int USE_CLSR ;
 int USE_FSR ;
 int dev_dbg (struct device*,char*,int,long long,int,int,int,...) ;
 int dev_info (struct device*,char*,int ,long long) ;
 scalar_t__ dev_name (struct device*) ;
 int devm_kmalloc (struct device*,int ,int ) ;
 int mutex_init (int *) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int spi_nor_check (struct spi_nor*) ;
 int spi_nor_clear_sr_bp ;
 int spi_nor_debugfs_init (struct spi_nor*,struct flash_info const*) ;
 int spi_nor_erase ;
 struct flash_info* spi_nor_get_flash_info (struct spi_nor*,char const*) ;
 struct device_node* spi_nor_get_flash_node (struct spi_nor*) ;
 int spi_nor_init (struct spi_nor*) ;
 int spi_nor_init_params (struct spi_nor*) ;
 int spi_nor_is_locked ;
 int spi_nor_lock ;
 int spi_nor_read ;
 int spi_nor_resume ;
 int spi_nor_set_addr_width (struct spi_nor*) ;
 int spi_nor_setup (struct spi_nor*,struct spi_nor_hwcaps const*) ;
 int spi_nor_unlock ;
 int spi_nor_write ;
 int sst_write ;

int spi_nor_scan(struct spi_nor *nor, const char *name,
   const struct spi_nor_hwcaps *hwcaps)
{
 const struct flash_info *info;
 struct device *dev = nor->dev;
 struct mtd_info *mtd = &nor->mtd;
 struct device_node *np = spi_nor_get_flash_node(nor);
 struct spi_nor_flash_parameter *params = &nor->params;
 int ret;
 int i;

 ret = spi_nor_check(nor);
 if (ret)
  return ret;


 nor->reg_proto = SNOR_PROTO_1_1_1;
 nor->read_proto = SNOR_PROTO_1_1_1;
 nor->write_proto = SNOR_PROTO_1_1_1;
 nor->bouncebuf_size = PAGE_SIZE;
 nor->bouncebuf = devm_kmalloc(dev, nor->bouncebuf_size,
          GFP_KERNEL);
 if (!nor->bouncebuf)
  return -ENOMEM;

 info = spi_nor_get_flash_info(nor, name);
 if (IS_ERR(info))
  return PTR_ERR(info);

 nor->info = info;

 spi_nor_debugfs_init(nor, info);

 mutex_init(&nor->lock);






 if (info->flags & SPI_NOR_XSR_RDY)
  nor->flags |= SNOR_F_READY_XSR_RDY;

 if (info->flags & SPI_NOR_HAS_LOCK)
  nor->flags |= SNOR_F_HAS_LOCK;





 if (JEDEC_MFR(nor->info) == SNOR_MFR_ATMEL ||
     JEDEC_MFR(nor->info) == SNOR_MFR_INTEL ||
     JEDEC_MFR(nor->info) == SNOR_MFR_SST ||
     nor->info->flags & SPI_NOR_HAS_LOCK)
  nor->clear_sr_bp = spi_nor_clear_sr_bp;


 spi_nor_init_params(nor);

 if (!mtd->name)
  mtd->name = dev_name(dev);
 mtd->priv = nor;
 mtd->type = MTD_NORFLASH;
 mtd->writesize = 1;
 mtd->flags = MTD_CAP_NORFLASH;
 mtd->size = params->size;
 mtd->_erase = spi_nor_erase;
 mtd->_read = spi_nor_read;
 mtd->_resume = spi_nor_resume;

 if (nor->params.locking_ops) {
  mtd->_lock = spi_nor_lock;
  mtd->_unlock = spi_nor_unlock;
  mtd->_is_locked = spi_nor_is_locked;
 }


 if (info->flags & SST_WRITE)
  mtd->_write = sst_write;
 else
  mtd->_write = spi_nor_write;

 if (info->flags & USE_FSR)
  nor->flags |= SNOR_F_USE_FSR;
 if (info->flags & SPI_NOR_HAS_TB)
  nor->flags |= SNOR_F_HAS_SR_TB;
 if (info->flags & NO_CHIP_ERASE)
  nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
 if (info->flags & USE_CLSR)
  nor->flags |= SNOR_F_USE_CLSR;

 if (info->flags & SPI_NOR_NO_ERASE)
  mtd->flags |= MTD_NO_ERASE;

 mtd->dev.parent = dev;
 nor->page_size = params->page_size;
 mtd->writebufsize = nor->page_size;

 if (of_property_read_bool(np, "broken-flash-reset"))
  nor->flags |= SNOR_F_BROKEN_RESET;







 ret = spi_nor_setup(nor, hwcaps);
 if (ret)
  return ret;

 if (info->flags & SPI_NOR_4B_OPCODES)
  nor->flags |= SNOR_F_4B_OPCODES;

 ret = spi_nor_set_addr_width(nor);
 if (ret)
  return ret;


 ret = spi_nor_init(nor);
 if (ret)
  return ret;

 dev_info(dev, "%s (%lld Kbytes)\n", info->name,
   (long long)mtd->size >> 10);

 dev_dbg(dev,
  "mtd .name = %s, .size = 0x%llx (%lldMiB), "
  ".erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\n",
  mtd->name, (long long)mtd->size, (long long)(mtd->size >> 20),
  mtd->erasesize, mtd->erasesize / 1024, mtd->numeraseregions);

 if (mtd->numeraseregions)
  for (i = 0; i < mtd->numeraseregions; i++)
   dev_dbg(dev,
    "mtd.eraseregions[%d] = { .offset = 0x%llx, "
    ".erasesize = 0x%.8x (%uKiB), "
    ".numblocks = %d }\n",
    i, (long long)mtd->eraseregions[i].offset,
    mtd->eraseregions[i].erasesize,
    mtd->eraseregions[i].erasesize / 1024,
    mtd->eraseregions[i].numblocks);
 return 0;
}
