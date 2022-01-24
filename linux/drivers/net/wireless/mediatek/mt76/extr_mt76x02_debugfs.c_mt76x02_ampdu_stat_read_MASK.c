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
struct seq_file {struct mt76x02_dev* private; } ;
struct mt76x02_dev {int* aggr_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int
FUNC2(struct seq_file *file, void *data)
{
	struct mt76x02_dev *dev = file->private;
	int i, j;

	for (i = 0; i < 4; i++) {
		FUNC1(file, "Length: ");
		for (j = 0; j < 8; j++)
			FUNC0(file, "%8d | ", i * 8 + j + 1);
		FUNC1(file, "\n");
		FUNC1(file, "Count:  ");
		for (j = 0; j < 8; j++)
			FUNC0(file, "%8d | ", dev->aggr_stats[i * 8 + j]);
		FUNC1(file, "\n");
		FUNC1(file, "--------");
		for (j = 0; j < 8; j++)
			FUNC1(file, "-----------");
		FUNC1(file, "\n");
	}

	return 0;
}