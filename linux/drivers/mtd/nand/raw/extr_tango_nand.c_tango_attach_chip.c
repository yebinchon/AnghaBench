
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_ecc_ctrl {int strength; int write_oob; int read_oob; int write_page; int read_page; int write_page_raw; int read_page_raw; int bytes; int algo; int mode; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; } ;


 int BITS_PER_BYTE ;
 int DIV_ROUND_UP (int,int ) ;
 int FIELD_ORDER ;
 int NAND_ECC_BCH ;
 int NAND_ECC_HW ;
 int tango_read_oob ;
 int tango_read_page ;
 int tango_read_page_raw ;
 int tango_write_oob ;
 int tango_write_page ;
 int tango_write_page_raw ;

__attribute__((used)) static int tango_attach_chip(struct nand_chip *chip)
{
 struct nand_ecc_ctrl *ecc = &chip->ecc;

 ecc->mode = NAND_ECC_HW;
 ecc->algo = NAND_ECC_BCH;
 ecc->bytes = DIV_ROUND_UP(ecc->strength * FIELD_ORDER, BITS_PER_BYTE);

 ecc->read_page_raw = tango_read_page_raw;
 ecc->write_page_raw = tango_write_page_raw;
 ecc->read_page = tango_read_page;
 ecc->write_page = tango_write_page;
 ecc->read_oob = tango_read_oob;
 ecc->write_oob = tango_write_oob;

 return 0;
}
