
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
struct nand_bbt_descr {int dummy; } ;


 int create_bbt (struct nand_chip*,int *,struct nand_bbt_descr*,int) ;
 int * nand_get_data_buf (struct nand_chip*) ;

__attribute__((used)) static inline int nand_memory_bbt(struct nand_chip *this,
      struct nand_bbt_descr *bd)
{
 u8 *pagebuf = nand_get_data_buf(this);

 return create_bbt(this, pagebuf, bd, -1);
}
