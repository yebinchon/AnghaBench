
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nand_memory_organization {unsigned int ntargets; } ;
struct nand_flash_dev {int dummy; } ;
struct TYPE_4__ {int* data; } ;
struct nand_chip {int cur_cs; int options; int base; TYPE_2__ id; int lock; } ;
struct TYPE_3__ {scalar_t__ parent; } ;
struct mtd_info {unsigned int size; TYPE_1__ dev; scalar_t__ name; } ;
typedef int id ;


 int NAND_SCAN_SILENT_NODEV ;
 int NAND_SDR_IFACE ;
 scalar_t__ dev_name (scalar_t__) ;
 int mutex_init (int *) ;
 int nand_deselect_target (struct nand_chip*) ;
 int nand_detect (struct nand_chip*,struct nand_flash_dev*) ;
 int nand_dt_init (struct nand_chip*) ;
 int nand_legacy_check_hooks (struct nand_chip*) ;
 int nand_readid_op (struct nand_chip*,int ,int*,int) ;
 int nand_reset (struct nand_chip*,unsigned int) ;
 int nand_select_target (struct nand_chip*,unsigned int) ;
 int nand_set_defaults (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (int *) ;
 unsigned int nanddev_target_size (int *) ;
 int onfi_fill_data_interface (struct nand_chip*,int ,int ) ;
 int pr_info (char*,unsigned int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int nand_scan_ident(struct nand_chip *chip, unsigned int maxchips,
      struct nand_flash_dev *table)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;
 int nand_maf_id, nand_dev_id;
 unsigned int i;
 int ret;

 memorg = nanddev_get_memorg(&chip->base);


 chip->cur_cs = -1;

 mutex_init(&chip->lock);


 onfi_fill_data_interface(chip, NAND_SDR_IFACE, 0);

 ret = nand_dt_init(chip);
 if (ret)
  return ret;

 if (!mtd->name && mtd->dev.parent)
  mtd->name = dev_name(mtd->dev.parent);


 nand_set_defaults(chip);

 ret = nand_legacy_check_hooks(chip);
 if (ret)
  return ret;

 memorg->ntargets = maxchips;


 ret = nand_detect(chip, table);
 if (ret) {
  if (!(chip->options & NAND_SCAN_SILENT_NODEV))
   pr_warn("No NAND device found\n");
  nand_deselect_target(chip);
  return ret;
 }

 nand_maf_id = chip->id.data[0];
 nand_dev_id = chip->id.data[1];

 nand_deselect_target(chip);


 for (i = 1; i < maxchips; i++) {
  u8 id[2];


  ret = nand_reset(chip, i);
  if (ret)
   break;

  nand_select_target(chip, i);

  ret = nand_readid_op(chip, 0, id, sizeof(id));
  if (ret)
   break;

  if (nand_maf_id != id[0] || nand_dev_id != id[1]) {
   nand_deselect_target(chip);
   break;
  }
  nand_deselect_target(chip);
 }
 if (i > 1)
  pr_info("%d chips detected\n", i);


 memorg->ntargets = i;
 mtd->size = i * nanddev_target_size(&chip->base);

 return 0;
}
