
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int * oob_poi; } ;


 int denali_write_raw (struct nand_chip*,int const*,int *,int) ;

__attribute__((used)) static int denali_write_page_raw(struct nand_chip *chip, const u8 *buf,
     int oob_required, int page)
{
 return denali_write_raw(chip, buf, oob_required ? chip->oob_poi : ((void*)0),
    page);
}
