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
struct hinic_hwdev {int /*<<< orphan*/  hwif; } ;
struct hinic_pfhwdev {int /*<<< orphan*/  pf_to_mgmt; struct hinic_hwdev hwdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_MOD_L2NIC ; 
 int /*<<< orphan*/  HINIC_PF_MGMT_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hinic_pfhwdev *pfhwdev)
{
	struct hinic_hwdev *hwdev = &pfhwdev->hwdev;

	FUNC1(hwdev->hwif, HINIC_PF_MGMT_INIT);

	FUNC2(&pfhwdev->pf_to_mgmt, HINIC_MOD_L2NIC);

	FUNC0(&pfhwdev->pf_to_mgmt);
}