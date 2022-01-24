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
struct file_operations {int dummy; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
struct cxl_context {int /*<<< orphan*/  pe; scalar_t__ mapping; } ;

/* Variables and functions */
 int EEXIST ; 
 struct file* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afu_fops ; 
 int /*<<< orphan*/  compat_ioctl ; 
 int /*<<< orphan*/  FUNC3 (struct cxl_context*,int /*<<< orphan*/ ) ; 
 struct file* FUNC4 (char*,struct file_operations*,struct cxl_context*,int) ; 
 int FUNC5 (int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  mmap ; 
 int /*<<< orphan*/  open ; 
 int /*<<< orphan*/  poll ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  read ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  unlocked_ioctl ; 

struct file *FUNC9(struct cxl_context *ctx, struct file_operations *fops,
			int *fd)
{
	struct file *file;
	int rc, flags, fdtmp;
	char *name = NULL;

	/* only allow one per context */
	if (ctx->mapping)
		return FUNC0(-EEXIST);

	flags = O_RDWR | O_CLOEXEC;

	/* This code is similar to anon_inode_getfd() */
	rc = FUNC5(flags);
	if (rc < 0)
		return FUNC0(rc);
	fdtmp = rc;

	/*
	 * Patch the file ops.  Needs to be careful that this is rentrant safe.
	 */
	if (fops) {
		FUNC2(open);
		FUNC2(poll);
		FUNC2(read);
		FUNC2(release);
		FUNC2(unlocked_ioctl);
		FUNC2(compat_ioctl);
		FUNC2(mmap);
	} else /* use default ops */
		fops = (struct file_operations *)&afu_fops;

	name = FUNC6(GFP_KERNEL, "cxl:%d", ctx->pe);
	file = FUNC4(name, fops, ctx, flags);
	FUNC7(name);
	if (FUNC1(file))
		goto err_fd;

	FUNC3(ctx, file->f_mapping);
	*fd = fdtmp;
	return file;

err_fd:
	FUNC8(fdtmp);
	return NULL;
}