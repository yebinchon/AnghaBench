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
struct hl_device {int /*<<< orphan*/  dev; } ;
struct hl_debug_params {int reg_idx; } ;

/* Variables and functions */
 int GOYA_ETF_FIRST ; 
 int GOYA_ETF_LAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (struct hl_device*,struct hl_debug_params*) ; 
 int FUNC2 (struct hl_device*,struct hl_debug_params*) ; 

void FUNC3(struct hl_device *hdev)
{
	struct hl_debug_params params = {};
	int i, rc;

	for (i = GOYA_ETF_FIRST ; i <= GOYA_ETF_LAST ; i++) {
		params.reg_idx = i;
		rc = FUNC1(hdev, &params);
		if (rc)
			FUNC0(hdev->dev, "halt ETF failed, %d/%d\n", rc, i);
	}

	rc = FUNC2(hdev, &params);
	if (rc)
		FUNC0(hdev->dev, "halt ETR failed, %d\n", rc);
}