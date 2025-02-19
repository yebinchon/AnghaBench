
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int bch; } ;


 int BUG_ON (int) ;
 int DOC_ECC_BCH_COVERED_BYTES ;
 int DOC_ECC_BCH_SIZE ;
 int DOC_ECC_BCH_T ;
 int EINVAL ;
 int bitrev8 (int ) ;
 int change_bit (int,void*) ;
 int decode_bch (int ,int *,int,int *,int *,int *,int*) ;
 int doc_dbg (char*,int) ;

__attribute__((used)) static int doc_ecc_bch_fix_data(struct docg3 *docg3, void *buf, u8 *hwecc)
{
 u8 ecc[DOC_ECC_BCH_SIZE];
 int errorpos[DOC_ECC_BCH_T], i, numerrs;

 for (i = 0; i < DOC_ECC_BCH_SIZE; i++)
  ecc[i] = bitrev8(hwecc[i]);
 numerrs = decode_bch(docg3->cascade->bch, ((void*)0),
        DOC_ECC_BCH_COVERED_BYTES,
        ((void*)0), ecc, ((void*)0), errorpos);
 BUG_ON(numerrs == -EINVAL);
 if (numerrs < 0)
  goto out;

 for (i = 0; i < numerrs; i++)
  errorpos[i] = (errorpos[i] & ~7) | (7 - (errorpos[i] & 7));
 for (i = 0; i < numerrs; i++)
  if (errorpos[i] < DOC_ECC_BCH_COVERED_BYTES*8)

   change_bit(errorpos[i], buf);
out:
 doc_dbg("doc_ecc_bch_fix_data: flipped %d bits\n", numerrs);
 return numerrs;
}
