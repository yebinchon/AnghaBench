#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {TYPE_2__* pdev; TYPE_1__ ahw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NETXEN_MIN_P3_FW_SUPP ; 
 int /*<<< orphan*/  NX_FW_VERSION_OFFSET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct netxen_adapter*,int /*<<< orphan*/ ,int*) ; 

int
FUNC8(struct netxen_adapter *adapter)
{
	u32 flash_fw_ver, min_fw_ver;

	if (FUNC1(adapter->ahw.revision_id))
		return 0;

	if (FUNC7(adapter,
			NX_FW_VERSION_OFFSET, (int *)&flash_fw_ver)) {
		FUNC5(&adapter->pdev->dev, "Unable to read flash fw"
			"version\n");
		return -EIO;
	}

	flash_fw_ver = FUNC0(flash_fw_ver);
	min_fw_ver = NETXEN_MIN_P3_FW_SUPP;
	if (flash_fw_ver >= min_fw_ver)
		return 0;

	FUNC6(&adapter->pdev->dev, "Flash fw[%d.%d.%d] is < min fw supported"
		"[4.0.505]. Please update firmware on flash\n",
		FUNC3(flash_fw_ver), FUNC4(flash_fw_ver),
		FUNC2(flash_fw_ver));
	return -EINVAL;
}