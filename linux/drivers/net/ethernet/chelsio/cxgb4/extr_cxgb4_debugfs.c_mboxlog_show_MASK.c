#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {struct adapter* private; } ;
struct mbox_cmd_log {uintptr_t cursor; int size; } ;
struct mbox_cmd {int* cmd; int /*<<< orphan*/  execute; int /*<<< orphan*/  access; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  seqno; } ;
struct adapter {struct mbox_cmd_log* mbox_log; } ;

/* Variables and functions */
 int MBOX_LEN ; 
 void* SEQ_START_TOKEN ; 
 struct mbox_cmd* FUNC0 (struct mbox_cmd_log*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, void *v)
{
	struct adapter *adapter = seq->private;
	struct mbox_cmd_log *log = adapter->mbox_log;
	struct mbox_cmd *entry;
	int entry_idx, i;

	if (v == SEQ_START_TOKEN) {
		FUNC1(seq,
			   "%10s  %15s  %5s  %5s  %s\n",
			   "Seq#", "Tstamp", "Atime", "Etime",
			   "Command/Reply");
		return 0;
	}

	entry_idx = log->cursor + ((uintptr_t)v - 2);
	if (entry_idx >= log->size)
		entry_idx -= log->size;
	entry = FUNC0(log, entry_idx);

	/* skip over unused entries */
	if (entry->timestamp == 0)
		return 0;

	FUNC1(seq, "%10u  %15llu  %5d  %5d",
		   entry->seqno, entry->timestamp,
		   entry->access, entry->execute);
	for (i = 0; i < MBOX_LEN / 8; i++) {
		u64 flit = entry->cmd[i];
		u32 hi = (u32)(flit >> 32);
		u32 lo = (u32)flit;

		FUNC1(seq, "  %08x %08x", hi, lo);
	}
	FUNC2(seq, "\n");
	return 0;
}