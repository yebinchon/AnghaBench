
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct docg3 {int dummy; } ;


 int DOC_ASICMODE ;
 int DOC_ASICMODECONFIRM ;
 int DOC_ASICMODE_MDWREN ;
 int DOC_IOSPACE_IPL ;
 int doc_dbg (char*,int ) ;
 int doc_delay (struct docg3*,int) ;
 int doc_readb (struct docg3*,int ) ;
 int doc_writeb (struct docg3*,int ,int ) ;

__attribute__((used)) static void doc_set_asic_mode(struct docg3 *docg3, u8 mode)
{
 int i;

 for (i = 0; i < 12; i++)
  doc_readb(docg3, DOC_IOSPACE_IPL);

 mode |= DOC_ASICMODE_MDWREN;
 doc_dbg("doc_set_asic_mode(%02x)\n", mode);
 doc_writeb(docg3, mode, DOC_ASICMODE);
 doc_writeb(docg3, ~mode, DOC_ASICMODECONFIRM);
 doc_delay(docg3, 1);
}
