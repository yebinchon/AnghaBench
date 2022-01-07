
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct seq_file {struct adapter* private; } ;
struct mbox_cmd_log {uintptr_t cursor; int size; } ;
struct mbox_cmd {int* cmd; int execute; int access; int timestamp; int seqno; } ;
struct adapter {struct mbox_cmd_log* mbox_log; } ;


 int MBOX_LEN ;
 void* SEQ_START_TOKEN ;
 struct mbox_cmd* mbox_cmd_log_entry (struct mbox_cmd_log*,int) ;
 int seq_printf (struct seq_file*,char*,char*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int mboxlog_show(struct seq_file *seq, void *v)
{
 struct adapter *adapter = seq->private;
 struct mbox_cmd_log *log = adapter->mbox_log;
 struct mbox_cmd *entry;
 int entry_idx, i;

 if (v == SEQ_START_TOKEN) {
  seq_printf(seq,
      "%10s  %15s  %5s  %5s  %s\n",
      "Seq#", "Tstamp", "Atime", "Etime",
      "Command/Reply");
  return 0;
 }

 entry_idx = log->cursor + ((uintptr_t)v - 2);
 if (entry_idx >= log->size)
  entry_idx -= log->size;
 entry = mbox_cmd_log_entry(log, entry_idx);


 if (entry->timestamp == 0)
  return 0;

 seq_printf(seq, "%10u  %15llu  %5d  %5d",
     entry->seqno, entry->timestamp,
     entry->access, entry->execute);
 for (i = 0; i < MBOX_LEN / 8; i++) {
  u64 flit = entry->cmd[i];
  u32 hi = (u32)(flit >> 32);
  u32 lo = (u32)flit;

  seq_printf(seq, "  %08x %08x", hi, lo);
 }
 seq_puts(seq, "\n");
 return 0;
}
