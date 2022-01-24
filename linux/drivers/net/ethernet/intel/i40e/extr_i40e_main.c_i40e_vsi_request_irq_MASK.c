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
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int flags; TYPE_1__* pdev; int /*<<< orphan*/  int_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int I40E_FLAG_MSIX_ENABLED ; 
 int I40E_FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  i40e_intr ; 
 int FUNC1 (struct i40e_vsi*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i40e_pf*) ; 

__attribute__((used)) static int FUNC3(struct i40e_vsi *vsi, char *basename)
{
	struct i40e_pf *pf = vsi->back;
	int err;

	if (pf->flags & I40E_FLAG_MSIX_ENABLED)
		err = FUNC1(vsi, basename);
	else if (pf->flags & I40E_FLAG_MSI_ENABLED)
		err = FUNC2(pf->pdev->irq, i40e_intr, 0,
				  pf->int_name, pf);
	else
		err = FUNC2(pf->pdev->irq, i40e_intr, IRQF_SHARED,
				  pf->int_name, pf);

	if (err)
		FUNC0(&pf->pdev->dev, "request_irq failed, Error %d\n", err);

	return err;
}