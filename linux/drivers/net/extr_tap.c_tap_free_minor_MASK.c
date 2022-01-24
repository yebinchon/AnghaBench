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
struct tap_dev {int /*<<< orphan*/  minor; } ;
struct major_info {int /*<<< orphan*/  minor_lock; int /*<<< orphan*/  minor_idr; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct major_info* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(dev_t major, struct tap_dev *tap)
{
	struct major_info *tap_major;

	FUNC2();
	tap_major = FUNC6(FUNC0(major));
	if (!tap_major) {
		goto unlock;
	}

	FUNC4(&tap_major->minor_lock);
	if (tap->minor) {
		FUNC1(&tap_major->minor_idr, tap->minor);
		tap->minor = 0;
	}
	FUNC5(&tap_major->minor_lock);

unlock:
	FUNC3();
}