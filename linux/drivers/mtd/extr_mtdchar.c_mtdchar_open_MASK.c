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
struct mtd_info {scalar_t__ type; int flags; } ;
struct mtd_file_info {struct mtd_info* mtd; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct mtd_file_info* private_data; } ;

/* Variables and functions */
 int EACCES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mtd_info*) ; 
 scalar_t__ MTD_ABSENT ; 
 int MTD_WRITEABLE ; 
 int FUNC1 (struct mtd_info*) ; 
 struct mtd_info* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct inode*) ; 
 struct mtd_file_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtd_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	int minor = FUNC3(inode);
	int devnum = minor >> 1;
	int ret = 0;
	struct mtd_info *mtd;
	struct mtd_file_info *mfi;

	FUNC7("MTD_open\n");

	/* You can't open the RO devices RW */
	if ((file->f_mode & FMODE_WRITE) && (minor & 1))
		return -EACCES;

	FUNC5(&mtd_mutex);
	mtd = FUNC2(NULL, devnum);

	if (FUNC0(mtd)) {
		ret = FUNC1(mtd);
		goto out;
	}

	if (mtd->type == MTD_ABSENT) {
		ret = -ENODEV;
		goto out1;
	}

	/* You can't open it RW if it's not a writeable device */
	if ((file->f_mode & FMODE_WRITE) && !(mtd->flags & MTD_WRITEABLE)) {
		ret = -EACCES;
		goto out1;
	}

	mfi = FUNC4(sizeof(*mfi), GFP_KERNEL);
	if (!mfi) {
		ret = -ENOMEM;
		goto out1;
	}
	mfi->mtd = mtd;
	file->private_data = mfi;
	FUNC6(&mtd_mutex);
	return 0;

out1:
	FUNC8(mtd);
out:
	FUNC6(&mtd_mutex);
	return ret;
}