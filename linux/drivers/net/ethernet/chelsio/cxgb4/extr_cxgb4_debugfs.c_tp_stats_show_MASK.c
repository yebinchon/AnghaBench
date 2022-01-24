#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {struct adapter* private; } ;
struct TYPE_3__ {scalar_t__ nchan; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 scalar_t__ NCHAN ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*) ; 

__attribute__((used)) static int FUNC9(struct seq_file *seq, void *v)
{
	struct adapter *adap = seq->private;

	FUNC1(seq, "\n--------Adapter Stats--------\n");
	FUNC6(seq);
	FUNC3(seq);
	FUNC5(seq);
	FUNC7(seq);

	FUNC1(seq, "\n-------- Channel Stats --------\n");
	if (adap->params.arch.nchan == NCHAN)
		FUNC0(seq, "%-25s %-20s %-20s %-20s %-20s\n",
			   " ", "channel 0", "channel 1",
			   "channel 2", "channel 3");
	else
		FUNC0(seq, "%-25s %-20s %-20s\n",
			   " ", "channel 0", "channel 1");
	FUNC2(seq);
	FUNC8(seq);
	FUNC4(seq);

	return 0;
}