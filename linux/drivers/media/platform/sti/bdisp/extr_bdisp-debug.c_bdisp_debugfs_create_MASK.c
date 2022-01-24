#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  debugfs_entry; } ;
struct bdisp_dev {TYPE_1__ dbg; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  dirname ;

/* Variables and functions */
 char* BDISP_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bdisp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  last_nodes ; 
 int /*<<< orphan*/  last_nodes_raw ; 
 int /*<<< orphan*/  last_request ; 
 int /*<<< orphan*/  perf ; 
 int /*<<< orphan*/  regs ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct bdisp_dev *bdisp)
{
	char dirname[16];

	FUNC3(dirname, sizeof(dirname), "%s%d", BDISP_NAME, bdisp->id);
	bdisp->dbg.debugfs_entry = FUNC2(dirname, NULL);
	if (!bdisp->dbg.debugfs_entry)
		goto err;

	if (!FUNC0(regs))
		goto err;

	if (!FUNC0(last_nodes))
		goto err;

	if (!FUNC0(last_nodes_raw))
		goto err;

	if (!FUNC0(last_request))
		goto err;

	if (!FUNC0(perf))
		goto err;

	return 0;

err:
	FUNC1(bdisp);
	return -ENOMEM;
}