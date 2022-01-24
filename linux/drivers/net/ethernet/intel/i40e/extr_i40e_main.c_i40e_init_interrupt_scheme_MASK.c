#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct i40e_pf {int flags; TYPE_2__* irq_pile; TYPE_1__* pdev; } ;
struct i40e_lump_tracking {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_5__ {int num_entries; scalar_t__ search_hint; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40E_FLAG_DCB_CAPABLE ; 
 int I40E_FLAG_DCB_ENABLED ; 
 int I40E_FLAG_FD_ATR_ENABLED ; 
 int I40E_FLAG_FD_SB_ENABLED ; 
 int I40E_FLAG_FD_SB_INACTIVE ; 
 int I40E_FLAG_IWARP_ENABLED ; 
 int I40E_FLAG_MSIX_ENABLED ; 
 int I40E_FLAG_MSI_ENABLED ; 
 int I40E_FLAG_RSS_ENABLED ; 
 int I40E_FLAG_SRIOV_ENABLED ; 
 int I40E_FLAG_VMDQ_ENABLED ; 
 scalar_t__ I40E_PILE_VALID_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*,TYPE_2__*,int,scalar_t__) ; 
 int FUNC3 (struct i40e_pf*) ; 
 TYPE_2__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct i40e_pf *pf)
{
	int vectors = 0;
	ssize_t size;

	if (pf->flags & I40E_FLAG_MSIX_ENABLED) {
		vectors = FUNC3(pf);
		if (vectors < 0) {
			pf->flags &= ~(I40E_FLAG_MSIX_ENABLED	|
				       I40E_FLAG_IWARP_ENABLED	|
				       I40E_FLAG_RSS_ENABLED	|
				       I40E_FLAG_DCB_CAPABLE	|
				       I40E_FLAG_DCB_ENABLED	|
				       I40E_FLAG_SRIOV_ENABLED	|
				       I40E_FLAG_FD_SB_ENABLED	|
				       I40E_FLAG_FD_ATR_ENABLED	|
				       I40E_FLAG_VMDQ_ENABLED);
			pf->flags |= I40E_FLAG_FD_SB_INACTIVE;

			/* rework the queue expectations without MSIX */
			FUNC1(pf);
		}
	}

	if (!(pf->flags & I40E_FLAG_MSIX_ENABLED) &&
	    (pf->flags & I40E_FLAG_MSI_ENABLED)) {
		FUNC0(&pf->pdev->dev, "MSI-X not available, trying MSI\n");
		vectors = FUNC5(pf->pdev);
		if (vectors < 0) {
			FUNC0(&pf->pdev->dev, "MSI init failed - %d\n",
				 vectors);
			pf->flags &= ~I40E_FLAG_MSI_ENABLED;
		}
		vectors = 1;  /* one MSI or Legacy vector */
	}

	if (!(pf->flags & (I40E_FLAG_MSIX_ENABLED | I40E_FLAG_MSI_ENABLED)))
		FUNC0(&pf->pdev->dev, "MSI-X and MSI not available, falling back to Legacy IRQ\n");

	/* set up vector assignment tracking */
	size = sizeof(struct i40e_lump_tracking) + (sizeof(u16) * vectors);
	pf->irq_pile = FUNC4(size, GFP_KERNEL);
	if (!pf->irq_pile)
		return -ENOMEM;

	pf->irq_pile->num_entries = vectors;
	pf->irq_pile->search_hint = 0;

	/* track first vector for misc interrupts, ignore return */
	(void)FUNC2(pf, pf->irq_pile, 1, I40E_PILE_VALID_BIT - 1);

	return 0;
}