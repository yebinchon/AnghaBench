
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_NOP ;
 int doc_vdbg (char*,int) ;
 int doc_writeb (struct docg3*,int ,int ) ;

__attribute__((used)) static void doc_delay(struct docg3 *docg3, int nbNOPs)
{
 int i;

 doc_vdbg("NOP x %d\n", nbNOPs);
 for (i = 0; i < nbNOPs; i++)
  doc_writeb(docg3, 0, DOC_NOP);
}
