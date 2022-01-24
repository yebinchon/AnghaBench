#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {void* private_data; } ;
struct file_operations {scalar_t__ owner; } ;
struct file {void* private_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int ENOENT ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int O_ACCMODE ; 
 int O_NONBLOCK ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct inode*,TYPE_1__*,char const*,int,struct file_operations const*) ; 
 int /*<<< orphan*/  cxl_fs_cnt ; 
 int /*<<< orphan*/  cxl_fs_type ; 
 TYPE_1__* cxl_vfs_mount ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static struct file *FUNC11(const char *name,
				const struct file_operations *fops,
				void *priv, int flags)
{
	struct file *file;
	struct inode *inode;
	int rc;

	/* strongly inspired by anon_inode_getfile() */

	if (fops->owner && !FUNC10(fops->owner))
		return FUNC1(-ENOENT);

	rc = FUNC8(&cxl_fs_type, &cxl_vfs_mount, &cxl_fs_cnt);
	if (rc < 0) {
		FUNC7("Cannot mount cxl pseudo filesystem: %d\n", rc);
		file = FUNC1(rc);
		goto err_module;
	}

	inode = FUNC3(cxl_vfs_mount->mnt_sb);
	if (FUNC2(inode)) {
		file = FUNC0(inode);
		goto err_fs;
	}

	file = FUNC4(inode, cxl_vfs_mount, name,
				 flags & (O_ACCMODE | O_NONBLOCK), fops);
	if (FUNC2(file))
		goto err_inode;

	file->private_data = priv;

	return file;

err_inode:
	FUNC5(inode);
err_fs:
	FUNC9(&cxl_vfs_mount, &cxl_fs_cnt);
err_module:
	FUNC6(fops->owner);
	return file;
}