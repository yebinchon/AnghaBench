
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct doc_priv {int virtadr; } ;


 int DOCStatus ;
 scalar_t__ DoC_is_Millennium (struct doc_priv*) ;
 scalar_t__ DoC_is_MillenniumPlus (struct doc_priv*) ;
 int Mplus_NOP ;
 int NOP ;
 char ReadDOC (int ,int ) ;

__attribute__((used)) static void DoC_Delay(struct doc_priv *doc, unsigned short cycles)
{
 volatile char dummy;
 int i;

 for (i = 0; i < cycles; i++) {
  if (DoC_is_Millennium(doc))
   dummy = ReadDOC(doc->virtadr, NOP);
  else if (DoC_is_MillenniumPlus(doc))
   dummy = ReadDOC(doc->virtadr, Mplus_NOP);
  else
   dummy = ReadDOC(doc->virtadr, DOCStatus);
 }

}
