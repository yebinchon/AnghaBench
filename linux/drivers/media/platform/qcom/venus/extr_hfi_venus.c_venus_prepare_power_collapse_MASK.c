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
struct venus_hfi_device {int /*<<< orphan*/  pwr_collapse_prep; } ;
struct hfi_sys_pc_prep_pkt {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi_sys_pc_prep_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct venus_hfi_device*) ; 
 int /*<<< orphan*/  venus_hw_rsp_timeout ; 
 int FUNC4 (struct venus_hfi_device*,struct hfi_sys_pc_prep_pkt*) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct venus_hfi_device *hdev,
					bool wait)
{
	unsigned long timeout = FUNC1(venus_hw_rsp_timeout);
	struct hfi_sys_pc_prep_pkt pkt;
	int ret;

	FUNC0(&hdev->pwr_collapse_prep);

	FUNC2(&pkt);

	ret = FUNC4(hdev, &pkt);
	if (ret)
		return ret;

	if (!wait)
		return 0;

	ret = FUNC5(&hdev->pwr_collapse_prep, timeout);
	if (!ret) {
		FUNC3(hdev);
		return -ETIMEDOUT;
	}

	return 0;
}