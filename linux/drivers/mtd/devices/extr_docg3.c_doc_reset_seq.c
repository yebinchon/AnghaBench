
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_CMD_RESET ;
 int DOC_FLASHCONTROL ;
 int DOC_SEQ_RESET ;
 int doc_dbg (char*,char*) ;
 int doc_delay (struct docg3*,int) ;
 int doc_flash_command (struct docg3*,int ) ;
 int doc_flash_sequence (struct docg3*,int ) ;
 int doc_wait_ready (struct docg3*) ;
 int doc_writeb (struct docg3*,int,int ) ;

__attribute__((used)) static int doc_reset_seq(struct docg3 *docg3)
{
 int ret;

 doc_writeb(docg3, 0x10, DOC_FLASHCONTROL);
 doc_flash_sequence(docg3, DOC_SEQ_RESET);
 doc_flash_command(docg3, DOC_CMD_RESET);
 doc_delay(docg3, 2);
 ret = doc_wait_ready(docg3);

 doc_dbg("doc_reset_seq() -> isReady=%s\n", ret ? "false" : "true");
 return ret;
}
