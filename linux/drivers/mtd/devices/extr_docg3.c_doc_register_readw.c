
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct docg3 {int dummy; } ;


 int DOC_READADDRESS ;
 int doc_readw (struct docg3*,int) ;
 int doc_vdbg (char*,int,int) ;
 int doc_writew (struct docg3*,int,int ) ;

__attribute__((used)) static int doc_register_readw(struct docg3 *docg3, int reg)
{
 u16 val;

 doc_writew(docg3, reg, DOC_READADDRESS);
 val = doc_readw(docg3, reg);
 doc_vdbg("Read register %04x : %04x\n", reg, val);
 return val;
}
