
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct docg3 {int dummy; } ;


 int DOC_ECCCONF1 ;
 int DOC_ECCCONF1_HAMMING_BITS_MASK ;
 int doc_register_readb (struct docg3*,int ) ;
 int doc_writeb (struct docg3*,int,int ) ;

__attribute__((used)) static void doc_hamming_ecc_init(struct docg3 *docg3, int nb_bytes)
{
 u8 ecc_conf1;

 ecc_conf1 = doc_register_readb(docg3, DOC_ECCCONF1);
 ecc_conf1 &= ~DOC_ECCCONF1_HAMMING_BITS_MASK;
 ecc_conf1 |= (nb_bytes & DOC_ECCCONF1_HAMMING_BITS_MASK);
 doc_writeb(docg3, ecc_conf1, DOC_ECCCONF1);
}
