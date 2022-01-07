
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int steps; int (* read_page_raw ) (struct nand_chip*,void*,int,int) ;int size; int strength; } ;
struct nand_chip {int page_shift; TYPE_1__ ecc; void* oob_poi; } ;
struct mtd_info {int oobsize; } ;


 int max (int,int) ;
 int nand_check_erased_ecc_chunk (void*,int,void*,int,int *,int ,int ) ;
 void* nand_get_data_buf (struct nand_chip*) ;
 int stub1 (struct nand_chip*,void*,int,int) ;

__attribute__((used)) static int brcmstb_nand_verify_erased_page(struct mtd_info *mtd,
    struct nand_chip *chip, void *buf, u64 addr)
{
 int i, sas;
 void *oob = chip->oob_poi;
 int bitflips = 0;
 int page = addr >> chip->page_shift;
 int ret;
 void *ecc_chunk;

 if (!buf)
  buf = nand_get_data_buf(chip);

 sas = mtd->oobsize / chip->ecc.steps;


 ret = chip->ecc.read_page_raw(chip, buf, 1, page);
 if (ret)
  return ret;

 for (i = 0; i < chip->ecc.steps; i++, oob += sas) {
  ecc_chunk = buf + chip->ecc.size * i;
  ret = nand_check_erased_ecc_chunk(ecc_chunk,
        chip->ecc.size,
        oob, sas, ((void*)0), 0,
        chip->ecc.strength);
  if (ret < 0)
   return ret;

  bitflips = max(bitflips, ret);
 }

 return bitflips;
}
