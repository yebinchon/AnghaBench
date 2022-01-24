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
struct mtd_info {int dummy; } ;
struct blkpg_partition {char* devname; int /*<<< orphan*/  pno; int /*<<< orphan*/  length; int /*<<< orphan*/  start; } ;
struct blkpg_ioctl_arg {int op; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
#define  BLKPG_ADD_PARTITION 129 
#define  BLKPG_DEL_PARTITION 128 
 int /*<<< orphan*/  BLKPG_DEVNAMELTH ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct blkpg_partition*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mtd_info*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtd_info*) ; 

__attribute__((used)) static int FUNC5(struct mtd_info *mtd,
			       struct blkpg_ioctl_arg *arg)
{
	struct blkpg_partition p;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	if (FUNC1(&p, arg->data, sizeof(p)))
		return -EFAULT;

	switch (arg->op) {
	case BLKPG_ADD_PARTITION:

		/* Only master mtd device must be used to add partitions */
		if (FUNC4(mtd))
			return -EINVAL;

		/* Sanitize user input */
		p.devname[BLKPG_DEVNAMELTH - 1] = '\0';

		return FUNC2(mtd, p.devname, p.start, p.length);

	case BLKPG_DEL_PARTITION:

		if (p.pno < 0)
			return -EINVAL;

		return FUNC3(mtd, p.pno);

	default:
		return -EINVAL;
	}
}