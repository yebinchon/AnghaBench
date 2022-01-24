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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct b43legacy_wldev {TYPE_1__* wl; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int B43legacy_INTERFMODE_AUTOWLAN ; 
 int B43legacy_INTERFMODE_MANUALWLAN ; 
 int B43legacy_INTERFMODE_NONE ; 
 int B43legacy_INTERFMODE_NONWLAN ; 
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int FUNC0 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct b43legacy_wldev* FUNC3 (struct device*) ; 
 int FUNC4 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					       struct device_attribute *attr,
					       const char *buf, size_t count)
{
	struct b43legacy_wldev *wldev = FUNC3(dev);
	unsigned long flags;
	int err;
	int mode;

	if (!FUNC2(CAP_NET_ADMIN))
		return -EPERM;

	mode = FUNC4(buf, count);
	switch (mode) {
	case 0:
		mode = B43legacy_INTERFMODE_NONE;
		break;
	case 1:
		mode = B43legacy_INTERFMODE_NONWLAN;
		break;
	case 2:
		mode = B43legacy_INTERFMODE_MANUALWLAN;
		break;
	case 3:
		mode = B43legacy_INTERFMODE_AUTOWLAN;
		break;
	default:
		return -EINVAL;
	}

	FUNC5(&wldev->wl->mutex);
	FUNC7(&wldev->wl->irq_lock, flags);

	err = FUNC0(wldev, mode);
	if (err)
		FUNC1(wldev->wl, "Interference Mitigation not "
		       "supported by device\n");
	FUNC8(&wldev->wl->irq_lock, flags);
	FUNC6(&wldev->wl->mutex);

	return err ? err : count;
}