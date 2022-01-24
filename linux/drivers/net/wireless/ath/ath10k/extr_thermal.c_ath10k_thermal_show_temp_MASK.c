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
struct TYPE_2__ {int temperature; int /*<<< orphan*/  wmi_sync; } ;
struct ath10k {scalar_t__ state; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  data_lock; TYPE_1__ thermal; int /*<<< orphan*/  dev_flags; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FLAG_CRASH_FLUSH ; 
 scalar_t__ ATH10K_STATE_ON ; 
 int /*<<< orphan*/  ATH10K_THERMAL_SYNC_TIMEOUT_HZ ; 
 int ENETDOWN ; 
 int ESHUTDOWN ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,...) ; 
 int FUNC1 (struct ath10k*) ; 
 struct ath10k* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	struct ath10k *ar = FUNC2(dev);
	int ret, temperature;
	unsigned long time_left;

	FUNC3(&ar->conf_mutex);

	/* Can't get temperature when the card is off */
	if (ar->state != ATH10K_STATE_ON) {
		ret = -ENETDOWN;
		goto out;
	}

	FUNC5(&ar->thermal.wmi_sync);
	ret = FUNC1(ar);
	if (ret) {
		FUNC0(ar, "failed to read temperature %d\n", ret);
		goto out;
	}

	if (FUNC9(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags)) {
		ret = -ESHUTDOWN;
		goto out;
	}

	time_left = FUNC10(&ar->thermal.wmi_sync,
						ATH10K_THERMAL_SYNC_TIMEOUT_HZ);
	if (!time_left) {
		FUNC0(ar, "failed to synchronize thermal read\n");
		ret = -ETIMEDOUT;
		goto out;
	}

	FUNC7(&ar->data_lock);
	temperature = ar->thermal.temperature;
	FUNC8(&ar->data_lock);

	/* display in millidegree celcius */
	ret = FUNC6(buf, PAGE_SIZE, "%d\n", temperature * 1000);
out:
	FUNC4(&ar->conf_mutex);
	return ret;
}