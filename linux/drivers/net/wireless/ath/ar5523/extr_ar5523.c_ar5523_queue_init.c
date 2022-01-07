
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* qflags; void* mode; void* bursttime; void* logcwmax; void* logcwmin; void* aifs; void* priority; } ;
struct ar5523_cmd_txq_setup {TYPE_1__ attr; void* len; void* qid; } ;
struct ar5523 {int dummy; } ;
typedef int qinfo ;


 int WDCMSG_SETUP_TX_QUEUE ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_cmd_txq_setup*,int,int ) ;
 int ar5523_dbg (struct ar5523*,char*) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static int ar5523_queue_init(struct ar5523 *ar)
{
 struct ar5523_cmd_txq_setup qinfo;

 ar5523_dbg(ar, "setting up Tx queue\n");
 qinfo.qid = cpu_to_be32(0);
 qinfo.len = cpu_to_be32(sizeof(qinfo.attr));
 qinfo.attr.priority = cpu_to_be32(0);
 qinfo.attr.aifs = cpu_to_be32(3);
 qinfo.attr.logcwmin = cpu_to_be32(4);
 qinfo.attr.logcwmax = cpu_to_be32(10);
 qinfo.attr.bursttime = cpu_to_be32(0);
 qinfo.attr.mode = cpu_to_be32(0);
 qinfo.attr.qflags = cpu_to_be32(1);
 return ar5523_cmd_write(ar, WDCMSG_SETUP_TX_QUEUE, &qinfo,
     sizeof(qinfo), 0);
}
