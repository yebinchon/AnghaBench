
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523 {int dummy; } ;
typedef int qid ;
typedef int __be32 ;


 int WDCMSG_RELEASE_TX_QUEUE ;
 int ar5523_cmd_write (struct ar5523*,int ,int *,int,int ) ;
 int ar5523_dbg (struct ar5523*,char*) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static int ar5523_reset_tx_queues(struct ar5523 *ar)
{
 __be32 qid = cpu_to_be32(0);

 ar5523_dbg(ar, "resetting Tx queue\n");
 return ar5523_cmd_write(ar, WDCMSG_RELEASE_TX_QUEUE,
     &qid, sizeof(qid), 0);
}
