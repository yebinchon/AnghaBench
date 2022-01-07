
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int oob_poi; } ;


 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 int raw_read (struct nand_chip*,int *,int ) ;

__attribute__((used)) static int tango_read_page_raw(struct nand_chip *chip, u8 *buf,
          int oob_required, int page)
{
 nand_read_page_op(chip, page, 0, ((void*)0), 0);
 raw_read(chip, buf, chip->oob_poi);
 return 0;
}
