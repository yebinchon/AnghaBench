
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int write_page_raw; int read_page_raw; int write_page; int read_page; } ;
struct nand_chip {TYPE_1__ ecc; int controller; } ;
struct atmel_nand_controller {int dev; } ;


 int ENOTSUPP ;



 int atmel_nand_pmecc_init (struct nand_chip*) ;
 int atmel_nand_pmecc_read_page ;
 int atmel_nand_pmecc_read_page_raw ;
 int atmel_nand_pmecc_write_page ;
 int atmel_nand_pmecc_write_page_raw ;
 int dev_err (int ,char*,int) ;
 struct atmel_nand_controller* to_nand_controller (int ) ;

__attribute__((used)) static int atmel_nand_ecc_init(struct nand_chip *chip)
{
 struct atmel_nand_controller *nc;
 int ret;

 nc = to_nand_controller(chip->controller);

 switch (chip->ecc.mode) {
 case 129:
 case 128:



  break;

 case 130:
  ret = atmel_nand_pmecc_init(chip);
  if (ret)
   return ret;

  chip->ecc.read_page = atmel_nand_pmecc_read_page;
  chip->ecc.write_page = atmel_nand_pmecc_write_page;
  chip->ecc.read_page_raw = atmel_nand_pmecc_read_page_raw;
  chip->ecc.write_page_raw = atmel_nand_pmecc_write_page_raw;
  break;

 default:

  dev_err(nc->dev, "Unsupported ECC mode: %d\n",
   chip->ecc.mode);
  return -ENOTSUPP;
 }

 return 0;
}
