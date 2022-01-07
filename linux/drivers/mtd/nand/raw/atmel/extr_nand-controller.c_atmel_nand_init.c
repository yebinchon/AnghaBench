
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int mode; } ;
struct TYPE_9__ {int chip_delay; int select_chip; int write_buf; int read_buf; int write_byte; int read_byte; int cmd_ctrl; } ;
struct nand_chip {TYPE_5__ ecc; int options; TYPE_4__ legacy; int * controller; } ;
struct TYPE_6__ {int parent; } ;
struct mtd_info {TYPE_1__ dev; } ;
struct atmel_nand_controller {scalar_t__ pmecc; scalar_t__ dmac; TYPE_3__* caps; int mck; int base; int dev; } ;
struct atmel_nand {struct nand_chip base; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int setup_data_interface; } ;


 int NAND_ECC_HW ;
 int NAND_KEEP_TIMINGS ;
 int NAND_USE_BOUNCE_BUFFER ;
 int atmel_nand_cmd_ctrl ;
 int atmel_nand_read_buf ;
 int atmel_nand_read_byte ;
 int atmel_nand_select_chip ;
 int atmel_nand_write_buf ;
 int atmel_nand_write_byte ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static void atmel_nand_init(struct atmel_nand_controller *nc,
       struct atmel_nand *nand)
{
 struct nand_chip *chip = &nand->base;
 struct mtd_info *mtd = nand_to_mtd(chip);

 mtd->dev.parent = nc->dev;
 nand->base.controller = &nc->base;

 chip->legacy.cmd_ctrl = atmel_nand_cmd_ctrl;
 chip->legacy.read_byte = atmel_nand_read_byte;
 chip->legacy.write_byte = atmel_nand_write_byte;
 chip->legacy.read_buf = atmel_nand_read_buf;
 chip->legacy.write_buf = atmel_nand_write_buf;
 chip->legacy.select_chip = atmel_nand_select_chip;

 if (!nc->mck || !nc->caps->ops->setup_data_interface)
  chip->options |= NAND_KEEP_TIMINGS;


 chip->legacy.chip_delay = 40;





 if (nc->dmac)
  chip->options |= NAND_USE_BOUNCE_BUFFER;


 if (nc->pmecc)
  chip->ecc.mode = NAND_ECC_HW;
}
