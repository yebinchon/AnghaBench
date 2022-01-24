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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct si476x_radio {struct dentry* debugfs; TYPE_1__ v4l2dev; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (char*,int /*<<< orphan*/ ,struct dentry*,struct si476x_radio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radio_acf_fops ; 
 int /*<<< orphan*/  radio_agc_fops ; 
 int /*<<< orphan*/  radio_rds_blckcnt_fops ; 
 int /*<<< orphan*/  radio_rsq_fops ; 
 int /*<<< orphan*/  radio_rsq_primary_fops ; 

__attribute__((used)) static int FUNC6(struct si476x_radio *radio)
{
	struct dentry	*dentry;
	int		ret;

	dentry = FUNC2(FUNC5(radio->v4l2dev.dev), NULL);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto exit;
	}
	radio->debugfs = dentry;

	dentry = FUNC3("acf", S_IRUGO,
				     radio->debugfs, radio, &radio_acf_fops);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto cleanup;
	}

	dentry = FUNC3("rds_blckcnt", S_IRUGO,
				     radio->debugfs, radio,
				     &radio_rds_blckcnt_fops);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto cleanup;
	}

	dentry = FUNC3("agc", S_IRUGO,
				     radio->debugfs, radio, &radio_agc_fops);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto cleanup;
	}

	dentry = FUNC3("rsq", S_IRUGO,
				     radio->debugfs, radio, &radio_rsq_fops);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto cleanup;
	}

	dentry = FUNC3("rsq_primary", S_IRUGO,
				     radio->debugfs, radio,
				     &radio_rsq_primary_fops);
	if (FUNC0(dentry)) {
		ret = FUNC1(dentry);
		goto cleanup;
	}

	return 0;
cleanup:
	FUNC4(radio->debugfs);
exit:
	return ret;
}