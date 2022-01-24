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
struct i40e_hw {int dummy; } ;
struct i40e_pf {int /*<<< orphan*/  int_name; TYPE_2__* pdev; int /*<<< orphan*/  state; TYPE_1__* msix_entries; struct i40e_hw hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  I40E_ITR_8K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_PFINT_LNKLST0 ; 
 int /*<<< orphan*/  I40E_QUEUE_END_OF_LIST ; 
 int /*<<< orphan*/  I40E_RX_ITR ; 
 int /*<<< orphan*/  __I40E_MISC_IRQ_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*) ; 
 int /*<<< orphan*/  i40e_intr ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_pf*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i40e_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	int err = 0;

	/* Only request the IRQ once, the first time through. */
	if (!FUNC7(__I40E_MISC_IRQ_REQUESTED, pf->state)) {
		err = FUNC6(pf->msix_entries[0].vector,
				  i40e_intr, 0, pf->int_name, pf);
		if (err) {
			FUNC1(__I40E_MISC_IRQ_REQUESTED, pf->state);
			FUNC2(&pf->pdev->dev,
				 "request_irq for %s failed: %d\n",
				 pf->int_name, err);
			return -EFAULT;
		}
	}

	FUNC3(pf);

	/* associate no queues to the misc vector */
	FUNC8(hw, I40E_PFINT_LNKLST0, I40E_QUEUE_END_OF_LIST);
	FUNC8(hw, FUNC0(I40E_RX_ITR), I40E_ITR_8K);

	FUNC4(hw);

	FUNC5(pf);

	return err;
}