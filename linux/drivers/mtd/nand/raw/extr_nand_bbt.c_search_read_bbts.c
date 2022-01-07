
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int dummy; } ;
struct nand_bbt_descr {int dummy; } ;


 int search_bbt (struct nand_chip*,int *,struct nand_bbt_descr*) ;

__attribute__((used)) static void search_read_bbts(struct nand_chip *this, uint8_t *buf,
        struct nand_bbt_descr *td,
        struct nand_bbt_descr *md)
{

 search_bbt(this, buf, td);


 if (md)
  search_bbt(this, buf, md);
}
