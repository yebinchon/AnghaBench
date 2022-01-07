
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct docg3 {int dummy; } ;


 int DOC_BCH_HW_ECC (int) ;
 int DOC_ECC_BCH_SIZE ;
 int doc_register_readb (struct docg3*,int ) ;

__attribute__((used)) static void doc_get_bch_hw_ecc(struct docg3 *docg3, u8 *hwecc)
{
 int i;

 for (i = 0; i < DOC_ECC_BCH_SIZE; i++)
  hwecc[i] = doc_register_readb(docg3, DOC_BCH_HW_ECC(i));
}
