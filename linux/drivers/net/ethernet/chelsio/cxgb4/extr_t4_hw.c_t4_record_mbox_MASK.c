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
struct mbox_cmd_log {scalar_t__ cursor; scalar_t__ size; int /*<<< orphan*/  seqno; } ;
struct mbox_cmd {int access; int execute; scalar_t__ seqno; int /*<<< orphan*/  timestamp; scalar_t__* cmd; } ;
struct adapter {struct mbox_cmd_log* mbox_log; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int MBOX_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  jiffies ; 
 struct mbox_cmd* FUNC1 (struct mbox_cmd_log*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct adapter *adapter,
			   const __be64 *cmd, unsigned int size,
			   int access, int execute)
{
	struct mbox_cmd_log *log = adapter->mbox_log;
	struct mbox_cmd *entry;
	int i;

	entry = FUNC1(log, log->cursor++);
	if (log->cursor == log->size)
		log->cursor = 0;

	for (i = 0; i < size / 8; i++)
		entry->cmd[i] = FUNC0(cmd[i]);
	while (i < MBOX_LEN / 8)
		entry->cmd[i++] = 0;
	entry->timestamp = jiffies;
	entry->seqno = log->seqno++;
	entry->access = access;
	entry->execute = execute;
}