
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct TYPE_3__ {int IO_ADDR_W; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct fsl_upm_nand {int wait_flags; TYPE_2__ chip; } ;


 int FSL_UPM_WAIT_WRITE_BUFFER ;
 int FSL_UPM_WAIT_WRITE_BYTE ;
 int fun_wait_rnb (struct fsl_upm_nand*) ;
 int nand_to_mtd (struct nand_chip*) ;
 int out_8 (int ,int const) ;
 struct fsl_upm_nand* to_fsl_upm_nand (int ) ;

__attribute__((used)) static void fun_write_buf(struct nand_chip *chip, const uint8_t *buf, int len)
{
 struct fsl_upm_nand *fun = to_fsl_upm_nand(nand_to_mtd(chip));
 int i;

 for (i = 0; i < len; i++) {
  out_8(fun->chip.legacy.IO_ADDR_W, buf[i]);
  if (fun->wait_flags & FSL_UPM_WAIT_WRITE_BYTE)
   fun_wait_rnb(fun);
 }
 if (fun->wait_flags & FSL_UPM_WAIT_WRITE_BUFFER)
  fun_wait_rnb(fun);
}
