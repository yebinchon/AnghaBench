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
struct fimc_is {int /*<<< orphan*/ * debugfs_entry; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/ * FUNC0 (char*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fimc_is*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_is*) ; 
 int /*<<< orphan*/  fimc_is_fops ; 

__attribute__((used)) static int FUNC3(struct fimc_is *is)
{
	struct dentry *dentry;

	is->debugfs_entry = FUNC0("fimc_is", NULL);

	dentry = FUNC1("fw_log", S_IRUGO, is->debugfs_entry,
				     is, &fimc_is_fops);
	if (!dentry)
		FUNC2(is);

	return is->debugfs_entry == NULL ? -EIO : 0;
}