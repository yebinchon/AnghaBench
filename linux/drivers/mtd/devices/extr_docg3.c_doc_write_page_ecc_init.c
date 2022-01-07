
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_ECCCONF0 ;
 int DOC_ECCCONF0_BCH_ENABLE ;
 int DOC_ECCCONF0_DATA_BYTES_MASK ;
 int DOC_ECCCONF0_HAMMING_ENABLE ;
 int DOC_ECCCONF0_WRITE_MODE ;
 int DOC_FLASHCONTROL ;
 int doc_delay (struct docg3*,int) ;
 int doc_register_readb (struct docg3*,int ) ;
 int doc_wait_ready (struct docg3*) ;
 int doc_writew (struct docg3*,int,int ) ;

__attribute__((used)) static int doc_write_page_ecc_init(struct docg3 *docg3, int len)
{
 doc_writew(docg3, DOC_ECCCONF0_WRITE_MODE
     | DOC_ECCCONF0_BCH_ENABLE | DOC_ECCCONF0_HAMMING_ENABLE
     | (len & DOC_ECCCONF0_DATA_BYTES_MASK),
     DOC_ECCCONF0);
 doc_delay(docg3, 4);
 doc_register_readb(docg3, DOC_FLASHCONTROL);
 return doc_wait_ready(docg3);
}
