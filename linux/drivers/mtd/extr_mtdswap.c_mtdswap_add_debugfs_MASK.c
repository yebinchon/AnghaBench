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
struct mtdswap_dev {int /*<<< orphan*/  dev; TYPE_2__* mtd; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dfs_dir; } ;
struct TYPE_4__ {TYPE_1__ dbg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUSR ; 
 struct dentry* FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*,struct mtdswap_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mtdswap_fops ; 

__attribute__((used)) static int FUNC4(struct mtdswap_dev *d)
{
	struct dentry *root = d->mtd->dbg.dfs_dir;
	struct dentry *dent;

	if (!FUNC0(CONFIG_DEBUG_FS))
		return 0;

	if (FUNC1(root))
		return -1;

	dent = FUNC2("mtdswap_stats", S_IRUSR, root, d,
				&mtdswap_fops);
	if (!dent) {
		FUNC3(d->dev, "debugfs_create_file failed\n");
		return -1;
	}

	return 0;
}