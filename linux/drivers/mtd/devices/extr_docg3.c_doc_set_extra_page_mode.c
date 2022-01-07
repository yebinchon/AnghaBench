
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_CMD_PAGE_SIZE_532 ;
 int DOC_CTRL_PROTECTION_ERROR ;
 int DOC_CTRL_SEQUENCE_ERROR ;
 int DOC_FLASHCONTROL ;
 int DOC_SEQ_PAGE_SIZE_532 ;
 int EIO ;
 int doc_dbg (char*) ;
 int doc_delay (struct docg3*,int) ;
 int doc_flash_command (struct docg3*,int ) ;
 int doc_flash_sequence (struct docg3*,int ) ;
 int doc_register_readb (struct docg3*,int ) ;

__attribute__((used)) static int doc_set_extra_page_mode(struct docg3 *docg3)
{
 int fctrl;

 doc_dbg("doc_set_extra_page_mode()\n");
 doc_flash_sequence(docg3, DOC_SEQ_PAGE_SIZE_532);
 doc_flash_command(docg3, DOC_CMD_PAGE_SIZE_532);
 doc_delay(docg3, 2);

 fctrl = doc_register_readb(docg3, DOC_FLASHCONTROL);
 if (fctrl & (DOC_CTRL_PROTECTION_ERROR | DOC_CTRL_SEQUENCE_ERROR))
  return -EIO;
 else
  return 0;
}
