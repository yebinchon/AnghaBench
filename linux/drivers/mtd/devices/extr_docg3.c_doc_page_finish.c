
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_DATAEND ;
 int doc_delay (struct docg3*,int) ;
 int doc_writeb (struct docg3*,int ,int ) ;

__attribute__((used)) static void doc_page_finish(struct docg3 *docg3)
{
 doc_writeb(docg3, 0, DOC_DATAEND);
 doc_delay(docg3, 2);
}
