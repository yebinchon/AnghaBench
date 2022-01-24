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
struct genwqe_dev {struct dentry* debugfs_root; int /*<<< orphan*/  use_platform_recovery; int /*<<< orphan*/  skip_recovery; int /*<<< orphan*/ * vf_jobtimeout_msec; int /*<<< orphan*/  kill_timeout; int /*<<< orphan*/  ddcb_software_timeout; int /*<<< orphan*/  err_inject; int /*<<< orphan*/  debugfs_genwqe; int /*<<< orphan*/  card_idx; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 char* GENWQE_DEVNAME ; 
 unsigned int GENWQE_MAX_VFS ; 
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  curr_dbg_uid0_fops ; 
 int /*<<< orphan*/  curr_dbg_uid1_fops ; 
 int /*<<< orphan*/  curr_dbg_uid2_fops ; 
 int /*<<< orphan*/  curr_regs_fops ; 
 int /*<<< orphan*/  ddcb_info_fops ; 
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,struct genwqe_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  info_fops ; 
 int /*<<< orphan*/  jtimer_fops ; 
 int /*<<< orphan*/  prev_dbg_uid0_fops ; 
 int /*<<< orphan*/  prev_dbg_uid1_fops ; 
 int /*<<< orphan*/  prev_dbg_uid2_fops ; 
 int /*<<< orphan*/  prev_regs_fops ; 
 int /*<<< orphan*/  queue_working_time_fops ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

void FUNC6(struct genwqe_dev *cd)
{
	struct dentry *root;
	char card_name[64];
	char name[64];
	unsigned int i;

	FUNC5(card_name, "%s%d_card", GENWQE_DEVNAME, cd->card_idx);

	root = FUNC0(card_name, cd->debugfs_genwqe);

	/* non privileged interfaces are done here */
	FUNC1("ddcb_info", S_IRUGO, root, cd, &ddcb_info_fops);
	FUNC1("info", S_IRUGO, root, cd, &info_fops);
	FUNC3("err_inject", 0666, root, &cd->err_inject);
	FUNC2("ddcb_software_timeout", 0666, root,
			   &cd->ddcb_software_timeout);
	FUNC2("kill_timeout", 0666, root, &cd->kill_timeout);

	/* privileged interfaces follow here */
	if (!FUNC4(cd)) {
		cd->debugfs_root = root;
		return;
	}

	FUNC1("curr_regs", S_IRUGO, root, cd, &curr_regs_fops);
	FUNC1("curr_dbg_uid0", S_IRUGO, root, cd,
			    &curr_dbg_uid0_fops);
	FUNC1("curr_dbg_uid1", S_IRUGO, root, cd,
			    &curr_dbg_uid1_fops);
	FUNC1("curr_dbg_uid2", S_IRUGO, root, cd,
			    &curr_dbg_uid2_fops);
	FUNC1("prev_regs", S_IRUGO, root, cd, &prev_regs_fops);
	FUNC1("prev_dbg_uid0", S_IRUGO, root, cd,
			    &prev_dbg_uid0_fops);
	FUNC1("prev_dbg_uid1", S_IRUGO, root, cd,
			    &prev_dbg_uid1_fops);
	FUNC1("prev_dbg_uid2", S_IRUGO, root, cd,
			    &prev_dbg_uid2_fops);

	for (i = 0; i <  GENWQE_MAX_VFS; i++) {
		FUNC5(name, "vf%u_jobtimeout_msec", i);
		FUNC2(name, 0666, root,
				   &cd->vf_jobtimeout_msec[i]);
	}

	FUNC1("jobtimer", S_IRUGO, root, cd, &jtimer_fops);
	FUNC1("queue_working_time", S_IRUGO, root, cd,
			    &queue_working_time_fops);
	FUNC2("skip_recovery", 0666, root, &cd->skip_recovery);
	FUNC2("use_platform_recovery", 0666, root,
			   &cd->use_platform_recovery);

	cd->debugfs_root = root;
}