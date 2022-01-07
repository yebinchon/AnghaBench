
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; } ;
struct nand_chip {int bbt_options; TYPE_1__ ecc; int options; } ;
struct mtd_info {int bitflip_threshold; } ;
struct TYPE_4__ {scalar_t__ sector_size_1k; } ;
struct brcmnand_host {TYPE_2__ hwcfg; } ;


 int ENXIO ;
 int NAND_BBT_NO_OOB ;
 int NAND_BBT_USE_FLASH ;
 int NAND_NO_SUBPAGE_WRITE ;
 int NAND_USE_BOUNCE_BUFFER ;
 scalar_t__ brcmnand_setup_dev (struct brcmnand_host*) ;
 int brcmstb_choose_ecc_layout (struct brcmnand_host*) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int brcmnand_attach_chip(struct nand_chip *chip)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct brcmnand_host *host = nand_get_controller_data(chip);
 int ret;

 chip->options |= NAND_NO_SUBPAGE_WRITE;





 chip->options |= NAND_USE_BOUNCE_BUFFER;

 if (chip->bbt_options & NAND_BBT_USE_FLASH)
  chip->bbt_options |= NAND_BBT_NO_OOB;

 if (brcmnand_setup_dev(host))
  return -ENXIO;

 chip->ecc.size = host->hwcfg.sector_size_1k ? 1024 : 512;


 mtd->bitflip_threshold = 1;

 ret = brcmstb_choose_ecc_layout(host);

 return ret;
}
