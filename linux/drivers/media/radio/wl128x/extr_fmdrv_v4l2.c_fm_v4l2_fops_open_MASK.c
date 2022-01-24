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
struct fmdev {int /*<<< orphan*/  mutex; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FM_MODE_RX ; 
 int FUNC0 (struct fmdev*) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int radio_disconnected ; 
 struct fmdev* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	int ret;
	struct fmdev *fmdev = NULL;

	/* Don't allow multiple open */
	if (radio_disconnected) {
		FUNC3("FM device is already opened\n");
		return -EBUSY;
	}

	fmdev = FUNC6(file);

	if (FUNC4(&fmdev->mutex))
		return -ERESTARTSYS;
	ret = FUNC0(fmdev);
	if (ret < 0) {
		FUNC3("Unable to prepare FM CORE\n");
		goto open_unlock;
	}

	FUNC2("Load FM RX firmware..\n");

	ret = FUNC1(fmdev, FM_MODE_RX);
	if (ret < 0) {
		FUNC3("Unable to load FM RX firmware\n");
		goto open_unlock;
	}
	radio_disconnected = 1;

open_unlock:
	FUNC5(&fmdev->mutex);
	return ret;
}