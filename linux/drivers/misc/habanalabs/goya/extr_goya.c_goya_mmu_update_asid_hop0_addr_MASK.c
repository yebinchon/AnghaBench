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
typedef  int u64 ;
typedef  int u32 ;
struct hl_device {int /*<<< orphan*/  dev; scalar_t__ pldm; } ;

/* Variables and functions */
 int GOYA_PLDM_MMU_TIMEOUT_USEC ; 
 int /*<<< orphan*/  MMU_ASID_BUSY ; 
 int MMU_CONFIG_TIMEOUT_USEC ; 
 int /*<<< orphan*/  MMU_HOP0_PA43_12 ; 
 int MMU_HOP0_PA43_12_SHIFT ; 
 int /*<<< orphan*/  MMU_HOP0_PA49_44 ; 
 int MMU_HOP0_PA49_44_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct hl_device*,int /*<<< orphan*/ ,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct hl_device *hdev, u32 asid,
						u64 phys_addr)
{
	u32 status, timeout_usec;
	int rc;

	if (hdev->pldm)
		timeout_usec = GOYA_PLDM_MMU_TIMEOUT_USEC;
	else
		timeout_usec = MMU_CONFIG_TIMEOUT_USEC;

	FUNC0(MMU_HOP0_PA43_12, phys_addr >> MMU_HOP0_PA43_12_SHIFT);
	FUNC0(MMU_HOP0_PA49_44, phys_addr >> MMU_HOP0_PA49_44_SHIFT);
	FUNC0(MMU_ASID_BUSY, 0x80000000 | asid);

	rc = FUNC2(
		hdev,
		MMU_ASID_BUSY,
		status,
		!(status & 0x80000000),
		1000,
		timeout_usec);

	if (rc) {
		FUNC1(hdev->dev,
			"Timeout during MMU hop0 config of asid %d\n", asid);
		return rc;
	}

	return 0;
}