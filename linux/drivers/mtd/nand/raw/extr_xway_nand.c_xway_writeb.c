
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xway_nand_data {scalar_t__ nandaddr; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;


 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct xway_nand_data* nand_get_controller_data (struct nand_chip*) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void xway_writeb(struct mtd_info *mtd, int op, u8 value)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct xway_nand_data *data = nand_get_controller_data(chip);

 writeb(value, data->nandaddr + op);
}
