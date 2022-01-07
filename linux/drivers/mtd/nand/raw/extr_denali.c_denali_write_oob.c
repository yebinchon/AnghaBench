
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int oob_poi; } ;


 int denali_write_raw (struct nand_chip*,int *,int ,int) ;

__attribute__((used)) static int denali_write_oob(struct nand_chip *chip, int page)
{
 return denali_write_raw(chip, ((void*)0), chip->oob_poi, page);
}
