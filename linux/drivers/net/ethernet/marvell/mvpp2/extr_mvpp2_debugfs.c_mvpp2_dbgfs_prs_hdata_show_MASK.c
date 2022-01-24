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
struct mvpp2_prs_entry {int dummy; } ;
struct mvpp2_dbgfs_prs_entry {int /*<<< orphan*/  tid; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mvpp2_prs_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_prs_entry*,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int,unsigned char*,int,unsigned char*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *s, void *unused)
{
	struct mvpp2_dbgfs_prs_entry *entry = s->private;
	struct mvpp2_prs_entry pe;
	unsigned char data[8], mask[8];
	int i;

	FUNC0(entry->priv, &pe, entry->tid);

	for (i = 0; i < 8; i++)
		FUNC1(&pe, i, &data[i], &mask[i]);

	FUNC2(s, "%*phN %*phN\n", 8, data, 8, mask);

	return 0;
}