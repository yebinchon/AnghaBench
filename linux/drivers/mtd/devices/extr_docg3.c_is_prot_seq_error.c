
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_CTRL_PROTECTION_ERROR ;
 int DOC_CTRL_SEQUENCE_ERROR ;
 int DOC_FLASHCONTROL ;
 int doc_register_readb (struct docg3*,int ) ;

__attribute__((used)) static int is_prot_seq_error(struct docg3 *docg3)
{
 int ctrl;

 ctrl = doc_register_readb(docg3, DOC_FLASHCONTROL);
 return ctrl & (DOC_CTRL_PROTECTION_ERROR | DOC_CTRL_SEQUENCE_ERROR);
}
