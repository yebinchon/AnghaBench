
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_cmd_log {scalar_t__ cursor; scalar_t__ size; int seqno; } ;
struct mbox_cmd {int access; int execute; scalar_t__ seqno; int timestamp; scalar_t__* cmd; } ;
struct adapter {struct mbox_cmd_log* mbox_log; } ;
typedef int __be64 ;


 int MBOX_LEN ;
 scalar_t__ be64_to_cpu (int const) ;
 int jiffies ;
 struct mbox_cmd* mbox_cmd_log_entry (struct mbox_cmd_log*,int ) ;

__attribute__((used)) static void t4_record_mbox(struct adapter *adapter,
      const __be64 *cmd, unsigned int size,
      int access, int execute)
{
 struct mbox_cmd_log *log = adapter->mbox_log;
 struct mbox_cmd *entry;
 int i;

 entry = mbox_cmd_log_entry(log, log->cursor++);
 if (log->cursor == log->size)
  log->cursor = 0;

 for (i = 0; i < size / 8; i++)
  entry->cmd[i] = be64_to_cpu(cmd[i]);
 while (i < MBOX_LEN / 8)
  entry->cmd[i++] = 0;
 entry->timestamp = jiffies;
 entry->seqno = log->seqno++;
 entry->access = access;
 entry->execute = execute;
}
