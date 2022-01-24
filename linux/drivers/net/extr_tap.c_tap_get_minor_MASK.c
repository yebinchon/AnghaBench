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
struct tap_dev {int minor; int /*<<< orphan*/  dev; } ;
struct major_info {int /*<<< orphan*/  minor_lock; int /*<<< orphan*/  minor_idr; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAP_NUM_DEVS ; 
 int FUNC1 (int /*<<< orphan*/ *,struct tap_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct major_info* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(dev_t major, struct tap_dev *tap)
{
	int retval = -ENOMEM;
	struct major_info *tap_major;

	FUNC3();
	tap_major = FUNC7(FUNC0(major));
	if (!tap_major) {
		retval = -EINVAL;
		goto unlock;
	}

	FUNC5(&tap_major->minor_lock);
	retval = FUNC1(&tap_major->minor_idr, tap, 1, TAP_NUM_DEVS, GFP_ATOMIC);
	if (retval >= 0) {
		tap->minor = retval;
	} else if (retval == -ENOSPC) {
		FUNC2(tap->dev, "Too many tap devices\n");
		retval = -EINVAL;
	}
	FUNC6(&tap_major->minor_lock);

unlock:
	FUNC4();
	return retval < 0 ? retval : 0;
}