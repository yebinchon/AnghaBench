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
struct ubi_debug_info {char* dfs_dir_name; struct dentry* dfs_dir; struct dentry* dfs_power_cut_max; struct dentry* dfs_power_cut_min; struct dentry* dfs_emulate_power_cut; struct dentry* dfs_emulate_io_failures; struct dentry* dfs_emulate_bitflips; struct dentry* dfs_disable_bgt; struct dentry* dfs_chk_fastmap; struct dentry* dfs_chk_io; struct dentry* dfs_chk_gen; } ;
struct ubi_device {unsigned long ubi_num; struct ubi_debug_info dbg; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENODEV ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRUSR ; 
 int /*<<< orphan*/  S_IWUSR ; 
 int UBI_DFS_DIR_LEN ; 
 char* UBI_DFS_DIR_NAME ; 
 struct dentry* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (char const*,int /*<<< orphan*/ ,struct dentry*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  dfs_fops ; 
 int /*<<< orphan*/  dfs_rootdir ; 
 int /*<<< orphan*/  eraseblk_count_fops ; 
 int FUNC7 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_device*,char*,char const*,int) ; 

int FUNC9(struct ubi_device *ubi)
{
	int err, n;
	unsigned long ubi_num = ubi->ubi_num;
	const char *fname;
	struct dentry *dent;
	struct ubi_debug_info *d = &ubi->dbg;

	if (!FUNC1(CONFIG_DEBUG_FS))
		return 0;

	n = FUNC7(d->dfs_dir_name, UBI_DFS_DIR_LEN + 1, UBI_DFS_DIR_NAME,
		     ubi->ubi_num);
	if (n == UBI_DFS_DIR_LEN) {
		/* The array size is too small */
		fname = UBI_DFS_DIR_NAME;
		dent = FUNC0(-EINVAL);
		goto out;
	}

	fname = d->dfs_dir_name;
	dent = FUNC4(fname, dfs_rootdir);
	if (FUNC2(dent))
		goto out;
	d->dfs_dir = dent;

	fname = "chk_gen";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_chk_gen = dent;

	fname = "chk_io";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_chk_io = dent;

	fname = "chk_fastmap";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_chk_fastmap = dent;

	fname = "tst_disable_bgt";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_disable_bgt = dent;

	fname = "tst_emulate_bitflips";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_emulate_bitflips = dent;

	fname = "tst_emulate_io_failures";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_emulate_io_failures = dent;

	fname = "tst_emulate_power_cut";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_emulate_power_cut = dent;

	fname = "tst_emulate_power_cut_min";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_power_cut_min = dent;

	fname = "tst_emulate_power_cut_max";
	dent = FUNC5(fname, S_IWUSR, d->dfs_dir, (void *)ubi_num,
				   &dfs_fops);
	if (FUNC2(dent))
		goto out_remove;
	d->dfs_power_cut_max = dent;

	fname = "detailed_erase_block_info";
	dent = FUNC5(fname, S_IRUSR, d->dfs_dir, (void *)ubi_num,
				   &eraseblk_count_fops);
	if (FUNC2(dent))
		goto out_remove;

	return 0;

out_remove:
	FUNC6(d->dfs_dir);
out:
	err = dent ? FUNC3(dent) : -ENODEV;
	FUNC8(ubi, "cannot create \"%s\" debugfs file or directory, error %d\n",
		fname, err);
	return err;
}