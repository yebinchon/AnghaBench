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
struct nandsim {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dfs_dir; } ;
struct TYPE_4__ {TYPE_1__ dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int /*<<< orphan*/  CONFIG_MTD_PARTITIONED_MASTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  S_IRUSR ; 
 struct dentry* FUNC4 (char*,int /*<<< orphan*/ ,struct dentry*,struct nandsim*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nandsim_fops ; 
 TYPE_2__* nsmtd ; 

__attribute__((used)) static int FUNC5(struct nandsim *dev)
{
	struct dentry *root = nsmtd->dbg.dfs_dir;
	struct dentry *dent;

	/*
	 * Just skip debugfs initialization when the debugfs directory is
	 * missing.
	 */
	if (FUNC1(root)) {
		if (FUNC0(CONFIG_DEBUG_FS) &&
		    !FUNC0(CONFIG_MTD_PARTITIONED_MASTER))
			FUNC3("CONFIG_MTD_PARTITIONED_MASTER must be enabled to expose debugfs stuff\n");
		return 0;
	}

	dent = FUNC4("nandsim_wear_report", S_IRUSR,
				   root, dev, &nandsim_fops);
	if (FUNC1(dent)) {
		FUNC2("cannot create \"nandsim_wear_report\" debugfs entry\n");
		return -1;
	}

	return 0;
}