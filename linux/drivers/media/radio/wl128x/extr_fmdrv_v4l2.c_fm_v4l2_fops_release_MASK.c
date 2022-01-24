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
 int /*<<< orphan*/  FM_MODE_OFF ; 
 int FUNC0 (struct fmdev*) ; 
 int FUNC1 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ radio_disconnected ; 
 struct fmdev* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	int ret;
	struct fmdev *fmdev;

	fmdev = FUNC6(file);
	if (!radio_disconnected) {
		FUNC2("FM device is already closed\n");
		return 0;
	}

	FUNC4(&fmdev->mutex);
	ret = FUNC1(fmdev, FM_MODE_OFF);
	if (ret < 0) {
		FUNC3("Unable to turn off the chip\n");
		goto release_unlock;
	}

	ret = FUNC0(fmdev);
	if (ret < 0) {
		FUNC3("FM CORE release failed\n");
		goto release_unlock;
	}
	radio_disconnected = 0;

release_unlock:
	FUNC5(&fmdev->mutex);
	return ret;
}