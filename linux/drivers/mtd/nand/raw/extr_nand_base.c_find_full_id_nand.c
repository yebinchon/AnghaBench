
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct nand_memory_organization {int pagesize; int pages_per_eraseblock; int eraseblocks_per_lun; int bits_per_cell; int oobsize; } ;
struct nand_flash_dev {int pagesize; int erasesize; int name; int onfi_timing_mode_default; int options; scalar_t__ chipsize; int oobsize; int id_len; int id; } ;
struct TYPE_7__ {int model; } ;
struct TYPE_6__ {int step_size; int strength; } ;
struct TYPE_8__ {TYPE_2__ eccreq; } ;
struct TYPE_5__ {int * data; } ;
struct nand_chip {TYPE_3__ parameters; int onfi_timing_mode_default; TYPE_4__ base; int options; TYPE_1__ id; } ;
struct mtd_info {int writesize; int erasesize; int oobsize; } ;


 int DIV_ROUND_DOWN_ULL (int,int) ;
 int GFP_KERNEL ;
 int NAND_ECC_STEP (struct nand_flash_dev*) ;
 int NAND_ECC_STRENGTH (struct nand_flash_dev*) ;
 int kstrdup (int ,int ) ;
 int nand_get_bits_per_cell (int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (TYPE_4__*) ;
 int strncmp (int ,int *,int ) ;

__attribute__((used)) static bool find_full_id_nand(struct nand_chip *chip,
         struct nand_flash_dev *type)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;
 u8 *id_data = chip->id.data;

 memorg = nanddev_get_memorg(&chip->base);

 if (!strncmp(type->id, id_data, type->id_len)) {
  memorg->pagesize = type->pagesize;
  mtd->writesize = memorg->pagesize;
  memorg->pages_per_eraseblock = type->erasesize /
            type->pagesize;
  mtd->erasesize = type->erasesize;
  memorg->oobsize = type->oobsize;
  mtd->oobsize = memorg->oobsize;

  memorg->bits_per_cell = nand_get_bits_per_cell(id_data[2]);
  memorg->eraseblocks_per_lun =
   DIV_ROUND_DOWN_ULL((u64)type->chipsize << 20,
        memorg->pagesize *
        memorg->pages_per_eraseblock);
  chip->options |= type->options;
  chip->base.eccreq.strength = NAND_ECC_STRENGTH(type);
  chip->base.eccreq.step_size = NAND_ECC_STEP(type);
  chip->onfi_timing_mode_default =
     type->onfi_timing_mode_default;

  chip->parameters.model = kstrdup(type->name, GFP_KERNEL);
  if (!chip->parameters.model)
   return 0;

  return 1;
 }
 return 0;
}
