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
typedef  int /*<<< orphan*/  u32 ;
struct i40e_pf {int flags; TYPE_1__* pdev; int /*<<< orphan*/  int_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int I40E_FLAG_MSIX_ENABLED ; 
 int I40E_FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 int /*<<< orphan*/  i40e_intr ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*) ; 
 int FUNC3 (struct i40e_pf*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i40e_pf*) ; 

__attribute__((used)) static int FUNC5(struct i40e_pf *pf)
{
	int err;

	if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
		err = FUNC3(pf);

		if (err) {
			FUNC0(&pf->pdev->dev,
				 "MSI-X misc vector request failed, error %d\n",
				 err);
			return err;
		}
	} else {
		u32 flags = pf->flags & I40E_FLAG_MSI_ENABLED ? 0 : IRQF_SHARED;

		err = FUNC4(pf->pdev->irq, i40e_intr, flags,
				  pf->int_name, pf);

		if (err) {
			FUNC0(&pf->pdev->dev,
				 "MSI/legacy misc vector request failed, error %d\n",
				 err);
			return err;
		}
		FUNC1(pf);
		FUNC2(pf);
	}

	return 0;
}