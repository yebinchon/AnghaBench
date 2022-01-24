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
struct TYPE_2__ {scalar_t__ partname; scalar_t__ partid; struct dentry* dfs_dir; } ;
struct device {int dummy; } ;
struct mtd_info {TYPE_1__ dbg; struct device dev; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,struct dentry*) ; 
 struct dentry* FUNC2 (char*,int,struct dentry*,struct mtd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 struct dentry* dfs_dir_mtd ; 
 int /*<<< orphan*/  mtd_partid_debug_fops ; 
 int /*<<< orphan*/  mtd_partname_debug_fops ; 

__attribute__((used)) static void FUNC6(struct mtd_info *mtd)
{
	struct device *dev = &mtd->dev;
	struct dentry *root, *dent;

	if (FUNC0(dfs_dir_mtd))
		return;

	root = FUNC1(FUNC5(dev), dfs_dir_mtd);
	if (FUNC0(root)) {
		FUNC3(dev, "won't show data in debugfs\n");
		return;
	}

	mtd->dbg.dfs_dir = root;

	if (mtd->dbg.partid) {
		dent = FUNC2("partid", 0400, root, mtd,
					   &mtd_partid_debug_fops);
		if (FUNC0(dent))
			FUNC4(dev, "can't create debugfs entry for partid\n");
	}

	if (mtd->dbg.partname) {
		dent = FUNC2("partname", 0400, root, mtd,
					   &mtd_partname_debug_fops);
		if (FUNC0(dent))
			FUNC4(dev,
				"can't create debugfs entry for partname\n");
	}
}