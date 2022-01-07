
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* read_page_raw ) (struct nand_chip*,int *,int,int) ;} ;
struct nand_chip {TYPE_1__ ecc; } ;


 int * nand_get_data_buf (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int *,int,int) ;

__attribute__((used)) static int marvell_nfc_hw_ecc_bch_read_oob_raw(struct nand_chip *chip, int page)
{
 u8 *buf = nand_get_data_buf(chip);

 return chip->ecc.read_page_raw(chip, buf, 1, page);
}
