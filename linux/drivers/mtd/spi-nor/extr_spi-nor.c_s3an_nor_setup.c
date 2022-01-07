
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_nor_hwcaps {int dummy; } ;
struct TYPE_5__ {int writebufsize; int size; int erasesize; } ;
struct TYPE_4__ {int convert_addr; } ;
struct spi_nor {int* bouncebuf; int page_size; TYPE_3__* info; TYPE_2__ mtd; TYPE_1__ params; int flags; int read_opcode; int program_opcode; int erase_opcode; int dev; } ;
struct TYPE_6__ {int n_sectors; int sector_size; } ;


 int SNOR_F_NO_OP_CHIP_ERASE ;
 int SPINOR_OP_READ ;
 int SPINOR_OP_XPP ;
 int SPINOR_OP_XSE ;
 int XSR_PAGESIZE ;
 int dev_err (int ,char*,int) ;
 int s3an_convert_addr ;
 int spi_nor_xread_sr (struct spi_nor*,int*) ;

__attribute__((used)) static int s3an_nor_setup(struct spi_nor *nor,
     const struct spi_nor_hwcaps *hwcaps)
{
 int ret;

 ret = spi_nor_xread_sr(nor, nor->bouncebuf);
 if (ret < 0) {
  dev_err(nor->dev, "error %d reading XRDSR\n", (int) ret);
  return ret;
 }

 nor->erase_opcode = SPINOR_OP_XSE;
 nor->program_opcode = SPINOR_OP_XPP;
 nor->read_opcode = SPINOR_OP_READ;
 nor->flags |= SNOR_F_NO_OP_CHIP_ERASE;
 if (nor->bouncebuf[0] & XSR_PAGESIZE) {

  nor->page_size = (nor->page_size == 264) ? 256 : 512;
  nor->mtd.writebufsize = nor->page_size;
  nor->mtd.size = 8 * nor->page_size * nor->info->n_sectors;
  nor->mtd.erasesize = 8 * nor->page_size;
 } else {

  nor->params.convert_addr = s3an_convert_addr;
  nor->mtd.erasesize = nor->info->sector_size;
 }

 return 0;
}
