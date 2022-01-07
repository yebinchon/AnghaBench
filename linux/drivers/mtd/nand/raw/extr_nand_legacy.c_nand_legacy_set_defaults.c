
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip_delay; scalar_t__ read_byte; scalar_t__ write_buf; scalar_t__ write_byte; scalar_t__ read_buf; scalar_t__ select_chip; int * waitfunc; scalar_t__ cmdfunc; } ;
struct nand_chip {unsigned int options; TYPE_1__ legacy; } ;


 unsigned int NAND_BUSWIDTH_16 ;
 scalar_t__ nand_command ;
 scalar_t__ nand_has_exec_op (struct nand_chip*) ;
 scalar_t__ nand_read_buf ;
 scalar_t__ nand_read_buf16 ;
 scalar_t__ nand_read_byte ;
 scalar_t__ nand_read_byte16 ;
 scalar_t__ nand_select_chip ;
 int * nand_wait ;
 scalar_t__ nand_write_buf ;
 scalar_t__ nand_write_buf16 ;
 scalar_t__ nand_write_byte ;
 scalar_t__ nand_write_byte16 ;

void nand_legacy_set_defaults(struct nand_chip *chip)
{
 unsigned int busw = chip->options & NAND_BUSWIDTH_16;

 if (nand_has_exec_op(chip))
  return;


 if (!chip->legacy.chip_delay)
  chip->legacy.chip_delay = 20;


 if (!chip->legacy.cmdfunc)
  chip->legacy.cmdfunc = nand_command;


 if (chip->legacy.waitfunc == ((void*)0))
  chip->legacy.waitfunc = nand_wait;

 if (!chip->legacy.select_chip)
  chip->legacy.select_chip = nand_select_chip;


 if (!chip->legacy.read_byte || chip->legacy.read_byte == nand_read_byte)
  chip->legacy.read_byte = busw ? nand_read_byte16 : nand_read_byte;
 if (!chip->legacy.write_buf || chip->legacy.write_buf == nand_write_buf)
  chip->legacy.write_buf = busw ? nand_write_buf16 : nand_write_buf;
 if (!chip->legacy.write_byte || chip->legacy.write_byte == nand_write_byte)
  chip->legacy.write_byte = busw ? nand_write_byte16 : nand_write_byte;
 if (!chip->legacy.read_buf || chip->legacy.read_buf == nand_read_buf)
  chip->legacy.read_buf = busw ? nand_read_buf16 : nand_read_buf;
}
