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
struct rtl_fw {int /*<<< orphan*/  fw_name; int /*<<< orphan*/  dev; int /*<<< orphan*/  fw; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_fw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_fw*) ; 

int FUNC5(struct rtl_fw *rtl_fw)
{
	int rc;

	rc = FUNC2(&rtl_fw->fw, rtl_fw->fw_name, rtl_fw->dev);
	if (rc < 0)
		goto out;

	if (!FUNC4(rtl_fw) || !FUNC3(rtl_fw)) {
		FUNC1(rtl_fw->fw);
		rc = -EINVAL;
		goto out;
	}

	return 0;
out:
	FUNC0(rtl_fw->dev, "Unable to load firmware %s (%d)\n",
		rtl_fw->fw_name, rc);
	return rc;
}