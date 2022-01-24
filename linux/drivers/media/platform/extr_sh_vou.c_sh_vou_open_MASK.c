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
struct sh_vou_device {scalar_t__ status; int /*<<< orphan*/  fop_lock; TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ SH_VOU_IDLE ; 
 scalar_t__ SH_VOU_INITIALISING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sh_vou_device*) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 int FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 
 struct sh_vou_device* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct sh_vou_device *vou_dev = FUNC8(file);
	int err;

	if (FUNC0(&vou_dev->fop_lock))
		return -ERESTARTSYS;

	err = FUNC6(file);
	if (err)
		goto done_open;
	if (FUNC5(file) &&
	    vou_dev->status == SH_VOU_INITIALISING) {
		/* First open */
		FUNC2(vou_dev->v4l2_dev.dev);
		err = FUNC4(vou_dev);
		if (err < 0) {
			FUNC3(vou_dev->v4l2_dev.dev);
			FUNC7(file);
		} else {
			vou_dev->status = SH_VOU_IDLE;
		}
	}
done_open:
	FUNC1(&vou_dev->fop_lock);
	return err;
}