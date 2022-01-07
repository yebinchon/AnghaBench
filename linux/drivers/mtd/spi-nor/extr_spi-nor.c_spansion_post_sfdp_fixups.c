
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_info {scalar_t__ size; int erasesize; } ;
struct spi_nor {TYPE_1__* info; struct mtd_info mtd; int erase_opcode; int flags; } ;
struct TYPE_2__ {int sector_size; } ;


 int SNOR_F_4B_OPCODES ;
 int SPINOR_OP_SE ;
 scalar_t__ SZ_16M ;

__attribute__((used)) static void spansion_post_sfdp_fixups(struct spi_nor *nor)
{
 struct mtd_info *mtd = &nor->mtd;

 if (mtd->size <= SZ_16M)
  return;

 nor->flags |= SNOR_F_4B_OPCODES;

 nor->erase_opcode = SPINOR_OP_SE;
 nor->mtd.erasesize = nor->info->sector_size;
}
