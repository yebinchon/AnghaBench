
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct adapter* private; } ;
struct mbox_cmd_log {scalar_t__ size; } ;
struct adapter {struct mbox_cmd_log* mbox_log; } ;
typedef scalar_t__ loff_t ;



__attribute__((used)) static inline void *mboxlog_get_idx(struct seq_file *seq, loff_t pos)
{
 struct adapter *adapter = seq->private;
 struct mbox_cmd_log *log = adapter->mbox_log;

 return ((pos <= log->size) ? (void *)(uintptr_t)(pos + 1) : ((void*)0));
}
