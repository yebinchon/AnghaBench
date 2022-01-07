
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct docg3 {int dummy; } ;


 int DOC_PLANES_STATUS_FAIL ;
 int EAGAIN ;
 int EIO ;
 int doc_dbg (char*,...) ;
 int doc_get_op_status (struct docg3*) ;
 int doc_is_ready (struct docg3*) ;
 int doc_page_finish (struct docg3*) ;
 int msleep (int) ;

__attribute__((used)) static int doc_write_erase_wait_status(struct docg3 *docg3)
{
 int i, status, ret = 0;

 for (i = 0; !doc_is_ready(docg3) && i < 5; i++)
  msleep(20);
 if (!doc_is_ready(docg3)) {
  doc_dbg("Timeout reached and the chip is still not ready\n");
  ret = -EAGAIN;
  goto out;
 }

 status = doc_get_op_status(docg3);
 if (status & DOC_PLANES_STATUS_FAIL) {
  doc_dbg("Erase/Write failed on (a) plane(s), status = %x\n",
   status);
  ret = -EIO;
 }

out:
 doc_page_finish(docg3);
 return ret;
}
