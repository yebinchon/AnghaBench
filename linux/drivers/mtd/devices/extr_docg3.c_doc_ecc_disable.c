
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_ECCCONF0 ;
 int DOC_ECCCONF0_READ_MODE ;
 int doc_delay (struct docg3*,int) ;
 int doc_writew (struct docg3*,int ,int ) ;

__attribute__((used)) static void doc_ecc_disable(struct docg3 *docg3)
{
 doc_writew(docg3, DOC_ECCCONF0_READ_MODE, DOC_ECCCONF0);
 doc_delay(docg3, 4);
}
