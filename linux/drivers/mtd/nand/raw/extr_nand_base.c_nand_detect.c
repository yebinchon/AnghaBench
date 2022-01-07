
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
struct nand_memory_organization {int planes_per_lun; int luns_per_target; int pagesize; int pages_per_eraseblock; int eraseblocks_per_lun; } ;
struct nand_manufacturer {int dummy; } ;
struct nand_flash_dev {scalar_t__ dev_id; int options; scalar_t__ chipsize; int pagesize; int * name; } ;
struct TYPE_6__ {scalar_t__ model; } ;
struct TYPE_5__ {struct nand_manufacturer const* desc; } ;
struct TYPE_4__ {scalar_t__* data; int len; } ;
struct nand_chip {int options; int page_shift; int pagemask; int chip_shift; int badblockbits; TYPE_3__ parameters; void* phys_erase_shift; void* bbt_erase_shift; int base; TYPE_2__ manufacturer; TYPE_1__ id; } ;
struct mtd_info {unsigned int writesize; unsigned int erasesize; int oobsize; scalar_t__ name; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int DIV_ROUND_DOWN_ULL (int,int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BUSWIDTH_16 ;
 int NAND_BUSWIDTH_AUTO ;
 int NAND_ROW_ADDR_3 ;
 int WARN_ON (int) ;
 void* ffs (unsigned int) ;
 scalar_t__ find_full_id_nand (struct nand_chip*,struct nand_flash_dev*) ;
 scalar_t__ is_full_id_nand (struct nand_flash_dev*) ;
 int kfree (scalar_t__) ;
 scalar_t__ kstrdup (int *,int ) ;
 int nand_decode_bbm_options (struct nand_chip*) ;
 int nand_decode_id (struct nand_chip*,struct nand_flash_dev*) ;
 struct nand_flash_dev* nand_flash_ids ;
 struct nand_manufacturer* nand_get_manufacturer (scalar_t__) ;
 int nand_id_len (scalar_t__*,int ) ;
 scalar_t__ nand_is_slc (struct nand_chip*) ;
 int nand_jedec_detect (struct nand_chip*) ;
 int nand_legacy_adjust_cmdfunc (struct nand_chip*) ;
 int nand_manufacturer_detect (struct nand_chip*) ;
 int nand_manufacturer_name (struct nand_manufacturer const*) ;
 int nand_onfi_detect (struct nand_chip*) ;
 int nand_readid_op (struct nand_chip*,int ,scalar_t__*,int) ;
 int nand_reset (struct nand_chip*,int ) ;
 int nand_select_target (struct nand_chip*,int ) ;
 int nand_set_defaults (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;
 int nanddev_target_size (int *) ;
 int pr_info (char*,int,char*,...) ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static int nand_detect(struct nand_chip *chip, struct nand_flash_dev *type)
{
 const struct nand_manufacturer *manufacturer;
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;
 int busw, ret;
 u8 *id_data = chip->id.data;
 u8 maf_id, dev_id;
 u64 targetsize;





 memorg = nanddev_get_memorg(&chip->base);
 memorg->planes_per_lun = 1;
 memorg->luns_per_target = 1;





 ret = nand_reset(chip, 0);
 if (ret)
  return ret;


 nand_select_target(chip, 0);


 ret = nand_readid_op(chip, 0, id_data, 2);
 if (ret)
  return ret;


 maf_id = id_data[0];
 dev_id = id_data[1];
 ret = nand_readid_op(chip, 0, id_data, sizeof(chip->id.data));
 if (ret)
  return ret;

 if (id_data[0] != maf_id || id_data[1] != dev_id) {
  pr_info("second ID read did not match %02x,%02x against %02x,%02x\n",
   maf_id, dev_id, id_data[0], id_data[1]);
  return -ENODEV;
 }

 chip->id.len = nand_id_len(id_data, ARRAY_SIZE(chip->id.data));


 manufacturer = nand_get_manufacturer(maf_id);
 chip->manufacturer.desc = manufacturer;

 if (!type)
  type = nand_flash_ids;
 busw = chip->options & NAND_BUSWIDTH_16;





 chip->options &= ~NAND_BUSWIDTH_16;

 for (; type->name != ((void*)0); type++) {
  if (is_full_id_nand(type)) {
   if (find_full_id_nand(chip, type))
    goto ident_done;
  } else if (dev_id == type->dev_id) {
   break;
  }
 }

 if (!type->name || !type->pagesize) {

  ret = nand_onfi_detect(chip);
  if (ret < 0)
   return ret;
  else if (ret)
   goto ident_done;


  ret = nand_jedec_detect(chip);
  if (ret < 0)
   return ret;
  else if (ret)
   goto ident_done;
 }

 if (!type->name)
  return -ENODEV;

 chip->parameters.model = kstrdup(type->name, GFP_KERNEL);
 if (!chip->parameters.model)
  return -ENOMEM;

 if (!type->pagesize)
  nand_manufacturer_detect(chip);
 else
  nand_decode_id(chip, type);


 chip->options |= type->options;

 memorg->eraseblocks_per_lun =
   DIV_ROUND_DOWN_ULL((u64)type->chipsize << 20,
        memorg->pagesize *
        memorg->pages_per_eraseblock);

ident_done:
 if (!mtd->name)
  mtd->name = chip->parameters.model;

 if (chip->options & NAND_BUSWIDTH_AUTO) {
  WARN_ON(busw & NAND_BUSWIDTH_16);
  nand_set_defaults(chip);
 } else if (busw != (chip->options & NAND_BUSWIDTH_16)) {




  pr_info("device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\n",
   maf_id, dev_id);
  pr_info("%s %s\n", nand_manufacturer_name(manufacturer),
   mtd->name);
  pr_warn("bus width %d instead of %d bits\n", busw ? 16 : 8,
   (chip->options & NAND_BUSWIDTH_16) ? 16 : 8);
  ret = -EINVAL;

  goto free_detect_allocation;
 }

 nand_decode_bbm_options(chip);


 chip->page_shift = ffs(mtd->writesize) - 1;

 targetsize = nanddev_target_size(&chip->base);
 chip->pagemask = (targetsize >> chip->page_shift) - 1;

 chip->bbt_erase_shift = chip->phys_erase_shift =
  ffs(mtd->erasesize) - 1;
 if (targetsize & 0xffffffff)
  chip->chip_shift = ffs((unsigned)targetsize) - 1;
 else {
  chip->chip_shift = ffs((unsigned)(targetsize >> 32));
  chip->chip_shift += 32 - 1;
 }

 if (chip->chip_shift - chip->page_shift > 16)
  chip->options |= NAND_ROW_ADDR_3;

 chip->badblockbits = 8;

 nand_legacy_adjust_cmdfunc(chip);

 pr_info("device found, Manufacturer ID: 0x%02x, Chip ID: 0x%02x\n",
  maf_id, dev_id);
 pr_info("%s %s\n", nand_manufacturer_name(manufacturer),
  chip->parameters.model);
 pr_info("%d MiB, %s, erase size: %d KiB, page size: %d, OOB size: %d\n",
  (int)(targetsize >> 20), nand_is_slc(chip) ? "SLC" : "MLC",
  mtd->erasesize >> 10, mtd->writesize, mtd->oobsize);
 return 0;

free_detect_allocation:
 kfree(chip->parameters.model);

 return ret;
}
