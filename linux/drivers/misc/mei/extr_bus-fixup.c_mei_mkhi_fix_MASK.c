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
struct mei_cl_device {int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ hbm_f_os_supported; scalar_t__ fw_f_fw_ver_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl_device*) ; 
 int FUNC2 (struct mei_cl_device*) ; 
 int FUNC3 (struct mei_cl_device*) ; 
 int FUNC4 (struct mei_cl_device*) ; 

__attribute__((used)) static void FUNC5(struct mei_cl_device *cldev)
{
	int ret;

	/* No need to enable the client if nothing is needed from it */
	if (!cldev->bus->fw_f_fw_ver_supported &&
	    !cldev->bus->hbm_f_os_supported)
		return;

	ret = FUNC2(cldev);
	if (ret)
		return;

	if (cldev->bus->fw_f_fw_ver_supported) {
		ret = FUNC3(cldev);
		if (ret < 0)
			FUNC0(&cldev->dev, "FW version command failed %d\n",
				ret);
	}

	if (cldev->bus->hbm_f_os_supported) {
		ret = FUNC4(cldev);
		if (ret < 0)
			FUNC0(&cldev->dev, "OS version command failed %d\n",
				ret);
	}
	FUNC1(cldev);
}