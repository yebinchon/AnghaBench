
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct nand_memory_organization {int pagesize; int pages_per_eraseblock; int oobsize; int planes_per_lun; int eraseblocks_per_lun; int bits_per_cell; int luns_per_target; } ;
struct nand_jedec_params {int multi_plane_addr; struct jedec_ecc_info* ecc_info; int features; int bits_per_cell; int blocks_per_lun; int lun_count; int spare_bytes_per_page; int pages_per_block; int byte_per_page; int model; int manufacturer; int revision; int crc; } ;
struct TYPE_5__ {int step_size; int strength; } ;
struct TYPE_6__ {TYPE_2__ eccreq; } ;
struct TYPE_4__ {int model; } ;
struct nand_chip {TYPE_3__ base; int options; TYPE_1__ parameters; } ;
struct mtd_info {int writesize; int erasesize; int oobsize; } ;
struct jedec_ecc_info {int codeword_size; int ecc_bits; } ;
typedef int id ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int JEDEC_FEATURE_16_BIT_BUS ;
 int NAND_BUSWIDTH_16 ;
 int ONFI_CRC_BASE ;
 int fls (int) ;
 int kfree (struct nand_jedec_params*) ;
 int kstrdup (int ,int ) ;
 struct nand_jedec_params* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int nand_read_data_op (struct nand_chip*,struct nand_jedec_params*,int,int) ;
 int nand_read_param_page_op (struct nand_chip*,int,int *,int ) ;
 int nand_readid_op (struct nand_chip*,int,char*,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 struct nand_memory_organization* nanddev_get_memorg (TYPE_3__*) ;
 int onfi_crc16 (int ,int *,int) ;
 int pr_err (char*) ;
 int pr_info (char*,int) ;
 int pr_warn (char*) ;
 int sanitize_string (int ,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

int nand_jedec_detect(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct nand_memory_organization *memorg;
 struct nand_jedec_params *p;
 struct jedec_ecc_info *ecc;
 int jedec_version = 0;
 char id[5];
 int i, val, ret;

 memorg = nanddev_get_memorg(&chip->base);


 ret = nand_readid_op(chip, 0x40, id, sizeof(id));
 if (ret || strncmp(id, "JEDEC", sizeof(id)))
  return 0;


 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 ret = nand_read_param_page_op(chip, 0x40, ((void*)0), 0);
 if (ret) {
  ret = 0;
  goto free_jedec_param_page;
 }

 for (i = 0; i < 3; i++) {
  ret = nand_read_data_op(chip, p, sizeof(*p), 1);
  if (ret) {
   ret = 0;
   goto free_jedec_param_page;
  }

  if (onfi_crc16(ONFI_CRC_BASE, (uint8_t *)p, 510) ==
    le16_to_cpu(p->crc))
   break;
 }

 if (i == 3) {
  pr_err("Could not find valid JEDEC parameter page; aborting\n");
  goto free_jedec_param_page;
 }


 val = le16_to_cpu(p->revision);
 if (val & (1 << 2))
  jedec_version = 10;
 else if (val & (1 << 1))
  jedec_version = 1;

 if (!jedec_version) {
  pr_info("unsupported JEDEC version: %d\n", val);
  goto free_jedec_param_page;
 }

 sanitize_string(p->manufacturer, sizeof(p->manufacturer));
 sanitize_string(p->model, sizeof(p->model));
 chip->parameters.model = kstrdup(p->model, GFP_KERNEL);
 if (!chip->parameters.model) {
  ret = -ENOMEM;
  goto free_jedec_param_page;
 }

 memorg->pagesize = le32_to_cpu(p->byte_per_page);
 mtd->writesize = memorg->pagesize;


 memorg->pages_per_eraseblock =
   1 << (fls(le32_to_cpu(p->pages_per_block)) - 1);
 mtd->erasesize = memorg->pages_per_eraseblock * memorg->pagesize;

 memorg->oobsize = le16_to_cpu(p->spare_bytes_per_page);
 mtd->oobsize = memorg->oobsize;

 memorg->luns_per_target = p->lun_count;
 memorg->planes_per_lun = 1 << p->multi_plane_addr;


 memorg->eraseblocks_per_lun =
  1 << (fls(le32_to_cpu(p->blocks_per_lun)) - 1);
 memorg->bits_per_cell = p->bits_per_cell;

 if (le16_to_cpu(p->features) & JEDEC_FEATURE_16_BIT_BUS)
  chip->options |= NAND_BUSWIDTH_16;


 ecc = &p->ecc_info[0];

 if (ecc->codeword_size >= 9) {
  chip->base.eccreq.strength = ecc->ecc_bits;
  chip->base.eccreq.step_size = 1 << ecc->codeword_size;
 } else {
  pr_warn("Invalid codeword size\n");
 }

 ret = 1;

free_jedec_param_page:
 kfree(p);
 return ret;
}
