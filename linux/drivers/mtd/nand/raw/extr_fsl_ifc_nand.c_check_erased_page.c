
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int bytes; int size; int steps; int strength; } ;
struct nand_chip {TYPE_1__ ecc; int * oob_poi; } ;
struct mtd_oob_region {int offset; } ;
struct TYPE_4__ {int corrected; int failed; } ;
struct mtd_info {TYPE_2__ ecc_stats; } ;


 int max (int,int) ;
 int mtd_ooblayout_ecc (struct mtd_info*,int ,struct mtd_oob_region*) ;
 int nand_check_erased_ecc_chunk (int *,int const,int *,int const,int *,int ,int ) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static int check_erased_page(struct nand_chip *chip, u8 *buf)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 u8 *ecc = chip->oob_poi;
 const int ecc_size = chip->ecc.bytes;
 const int pkt_size = chip->ecc.size;
 int i, res, bitflips = 0;
 struct mtd_oob_region oobregion = { };

 mtd_ooblayout_ecc(mtd, 0, &oobregion);
 ecc += oobregion.offset;

 for (i = 0; i < chip->ecc.steps; ++i) {
  res = nand_check_erased_ecc_chunk(buf, pkt_size, ecc, ecc_size,
        ((void*)0), 0,
        chip->ecc.strength);
  if (res < 0)
   mtd->ecc_stats.failed++;
  else
   mtd->ecc_stats.corrected += res;

  bitflips = max(res, bitflips);
  buf += pkt_size;
  ecc += ecc_size;
 }

 return bitflips;
}
