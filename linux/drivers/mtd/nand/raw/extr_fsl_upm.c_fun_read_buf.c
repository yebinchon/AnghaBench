
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct TYPE_3__ {int IO_ADDR_R; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct fsl_upm_nand {TYPE_2__ chip; } ;


 int in_8 (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct fsl_upm_nand* to_fsl_upm_nand (int ) ;

__attribute__((used)) static void fun_read_buf(struct nand_chip *chip, uint8_t *buf, int len)
{
 struct fsl_upm_nand *fun = to_fsl_upm_nand(nand_to_mtd(chip));
 int i;

 for (i = 0; i < len; i++)
  buf[i] = in_8(fun->chip.legacy.IO_ADDR_R);
}
