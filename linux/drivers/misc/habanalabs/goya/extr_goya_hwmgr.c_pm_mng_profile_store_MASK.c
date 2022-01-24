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
struct hl_device {scalar_t__ pm_mng_profile; int /*<<< orphan*/  fpriv_list_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  work_freq; int /*<<< orphan*/  curr_pll_profile; scalar_t__ compute_ctx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t EPERM ; 
 int /*<<< orphan*/  PLL_HIGH ; 
 int /*<<< orphan*/  PLL_LOW ; 
 scalar_t__ PM_AUTO ; 
 scalar_t__ PM_MANUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct hl_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct hl_device *hdev = FUNC1(dev);

	if (FUNC3(hdev)) {
		count = -ENODEV;
		goto out;
	}

	FUNC5(&hdev->fpriv_list_lock);

	if (hdev->compute_ctx) {
		FUNC0(hdev->dev,
			"Can't change PM profile while compute context is opened on the device\n");
		count = -EPERM;
		goto unlock_mutex;
	}

	if (FUNC8("auto", buf, FUNC7("auto")) == 0) {
		/* Make sure we are in LOW PLL when changing modes */
		if (hdev->pm_mng_profile == PM_MANUAL) {
			hdev->curr_pll_profile = PLL_HIGH;
			FUNC4(hdev, PLL_LOW);
			hdev->pm_mng_profile = PM_AUTO;
		}
	} else if (FUNC8("manual", buf, FUNC7("manual")) == 0) {
		if (hdev->pm_mng_profile == PM_AUTO) {
			/* Must release the lock because the work thread also
			 * takes this lock. But before we release it, set
			 * the mode to manual so nothing will change if a user
			 * suddenly opens the device
			 */
			hdev->pm_mng_profile = PM_MANUAL;

			FUNC6(&hdev->fpriv_list_lock);

			/* Flush the current work so we can return to the user
			 * knowing that he is the only one changing frequencies
			 */
			FUNC2(&hdev->work_freq);

			return count;
		}
	} else {
		FUNC0(hdev->dev, "value should be auto or manual\n");
		count = -EINVAL;
	}

unlock_mutex:
	FUNC6(&hdev->fpriv_list_lock);
out:
	return count;
}