
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {size_t reliable; } ;


 int DOC_CMD_FAST_MODE ;
 int DOC_CMD_RELIABLE_MODE ;
 int DOC_SEQ_SET_FASTMODE ;
 int DOC_SEQ_SET_RELIABLEMODE ;
 int doc_dbg (char*,char*) ;
 int doc_delay (struct docg3*,int) ;
 int doc_err (char*) ;
 int doc_flash_command (struct docg3*,int ) ;
 int doc_flash_sequence (struct docg3*,int ) ;

__attribute__((used)) static void doc_set_reliable_mode(struct docg3 *docg3)
{
 static char *strmode[] = { "normal", "fast", "reliable", "invalid" };

 doc_dbg("doc_set_reliable_mode(%s)\n", strmode[docg3->reliable]);
 switch (docg3->reliable) {
 case 0:
  break;
 case 1:
  doc_flash_sequence(docg3, DOC_SEQ_SET_FASTMODE);
  doc_flash_command(docg3, DOC_CMD_FAST_MODE);
  break;
 case 2:
  doc_flash_sequence(docg3, DOC_SEQ_SET_RELIABLEMODE);
  doc_flash_command(docg3, DOC_CMD_FAST_MODE);
  doc_flash_command(docg3, DOC_CMD_RELIABLE_MODE);
  break;
 default:
  doc_err("doc_set_reliable_mode(): invalid mode\n");
  break;
 }
 doc_delay(docg3, 2);
}
