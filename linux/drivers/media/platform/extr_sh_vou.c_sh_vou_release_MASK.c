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
struct sh_vou_device {int /*<<< orphan*/  fop_lock; TYPE_1__ v4l2_dev; int /*<<< orphan*/  status; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SH_VOU_INITIALISING ; 
 int /*<<< orphan*/  VOUER ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_vou_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct file*) ; 
 struct sh_vou_device* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct sh_vou_device *vou_dev = FUNC6(file);
	bool is_last;

	FUNC1(&vou_dev->fop_lock);
	is_last = FUNC5(file);
	FUNC0(file, NULL);
	if (is_last) {
		/* Last close */
		vou_dev->status = SH_VOU_INITIALISING;
		FUNC4(vou_dev, VOUER, 0, 0x101);
		FUNC3(vou_dev->v4l2_dev.dev);
	}
	FUNC2(&vou_dev->fop_lock);
	return 0;
}