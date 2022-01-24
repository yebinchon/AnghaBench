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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ dfs_rootdir ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(void)
{
	if (!FUNC0(CONFIG_DEBUG_FS))
		return 0;

	dfs_rootdir = FUNC3("ubi", NULL);
	if (FUNC1(dfs_rootdir)) {
		int err = dfs_rootdir ? FUNC2(dfs_rootdir) : -ENODEV;

		FUNC4("UBI error: cannot create \"ubi\" debugfs directory, error %d\n",
		       err);
		return err;
	}

	return 0;
}