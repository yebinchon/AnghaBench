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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct hl_device {int /*<<< orphan*/  dev; scalar_t__ pldm; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CORESIGHT_TIMEOUT_USEC ; 
 int EFAULT ; 
 int GOYA_PLDM_CORESIGHT_TIMEOUT_USEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct hl_device*,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct hl_device *hdev, u64 addr,
		int position, bool up)
{
	int rc;
	u32 val, timeout_usec;

	if (hdev->pldm)
		timeout_usec = GOYA_PLDM_CORESIGHT_TIMEOUT_USEC;
	else
		timeout_usec = CORESIGHT_TIMEOUT_USEC;

	rc = FUNC2(
		hdev,
		addr,
		val,
		up ? val & FUNC0(position) : !(val & FUNC0(position)),
		1000,
		timeout_usec);

	if (rc) {
		FUNC1(hdev->dev,
			"Timeout while waiting for coresight, addr: 0x%llx, position: %d, up: %d\n",
				addr, position, up);
		return -EFAULT;
	}

	return 0;
}