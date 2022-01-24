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
struct i40e_hw {int dummy; } ;
struct i40e_pf {int /*<<< orphan*/  pfr_count; int /*<<< orphan*/  state; TYPE_1__* pdev; struct i40e_hw hw; } ;
typedef  int i40e_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  __I40E_RESET_FAILED ; 
 int /*<<< orphan*/  __I40E_RESET_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i40e_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i40e_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	i40e_status ret;

	ret = FUNC2(hw);
	if (ret) {
		FUNC1(&pf->pdev->dev, "PF reset failed, %d\n", ret);
		FUNC3(__I40E_RESET_FAILED, pf->state);
		FUNC0(__I40E_RESET_RECOVERY_PENDING, pf->state);
	} else {
		pf->pfr_count++;
	}
	return ret;
}