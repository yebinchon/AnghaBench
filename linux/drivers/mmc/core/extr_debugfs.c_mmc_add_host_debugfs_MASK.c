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
struct mmc_host {int /*<<< orphan*/  fail_mmc_request; int /*<<< orphan*/  caps2; int /*<<< orphan*/  caps; struct dentry* debugfs_root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IRUSR ; 
 int S_IWUSR ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct mmc_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fail_default_attr ; 
 scalar_t__ fail_request ; 
 int /*<<< orphan*/  FUNC3 (char*,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmc_clock_fops ; 
 int /*<<< orphan*/  FUNC4 (struct mmc_host*) ; 
 int /*<<< orphan*/  mmc_ios_fops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC6(struct mmc_host *host)
{
	struct dentry *root;

	root = FUNC0(FUNC4(host), NULL);
	host->debugfs_root = root;

	FUNC1("ios", S_IRUSR, root, host, &mmc_ios_fops);
	FUNC2("caps", S_IRUSR, root, &host->caps);
	FUNC2("caps2", S_IRUSR, root, &host->caps2);
	FUNC1("clock", S_IRUSR | S_IWUSR, root, host,
			    &mmc_clock_fops);

#ifdef CONFIG_FAIL_MMC_REQUEST
	if (fail_request)
		setup_fault_attr(&fail_default_attr, fail_request);
	host->fail_mmc_request = fail_default_attr;
	fault_create_debugfs_attr("fail_mmc_request", root,
				  &host->fail_mmc_request);
#endif
}