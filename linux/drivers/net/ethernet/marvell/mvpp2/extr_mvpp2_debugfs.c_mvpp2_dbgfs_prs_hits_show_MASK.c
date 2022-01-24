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
struct seq_file {struct mvpp2_dbgfs_prs_entry* private; } ;
struct mvpp2_dbgfs_prs_entry {int /*<<< orphan*/  tid; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *unused)
{
	struct mvpp2_dbgfs_prs_entry *entry = s->private;
	int val;

	val = FUNC0(entry->priv, entry->tid);
	if (val < 0)
		return val;

	FUNC1(s, "%d\n", val);

	return 0;
}