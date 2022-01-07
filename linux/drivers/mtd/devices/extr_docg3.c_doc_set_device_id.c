
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct docg3 {int dummy; } ;


 int DOC_CTRL_CE ;
 int DOC_CTRL_VIOLATION ;
 int DOC_DEVICESELECT ;
 int DOC_FLASHCONTROL ;
 int doc_dbg (char*,int) ;
 int doc_register_readb (struct docg3*,int ) ;
 int doc_writeb (struct docg3*,int,int ) ;

__attribute__((used)) static void doc_set_device_id(struct docg3 *docg3, int id)
{
 u8 ctrl;

 doc_dbg("doc_set_device_id(%d)\n", id);
 doc_writeb(docg3, id, DOC_DEVICESELECT);
 ctrl = doc_register_readb(docg3, DOC_FLASHCONTROL);

 ctrl &= ~DOC_CTRL_VIOLATION;
 ctrl |= DOC_CTRL_CE;
 doc_writeb(docg3, ctrl, DOC_FLASHCONTROL);
}
