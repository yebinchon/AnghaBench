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
struct i40e_pf {int flags; int num_alloc_vsi; scalar_t__* vsi; } ;

/* Variables and functions */
 int I40E_FLAG_IWARP_ENABLED ; 
 int I40E_FLAG_MSIX_ENABLED ; 
 int I40E_FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*) ; 
 int FUNC1 (struct i40e_pf*) ; 
 int FUNC2 (struct i40e_pf*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct i40e_pf *pf)
{
	int err, i;

	/* We cleared the MSI and MSI-X flags when disabling the old interrupt
	 * scheme. We need to re-enabled them here in order to attempt to
	 * re-acquire the MSI or MSI-X vectors
	 */
	pf->flags |= (I40E_FLAG_MSIX_ENABLED | I40E_FLAG_MSI_ENABLED);

	err = FUNC1(pf);
	if (err)
		return err;

	/* Now that we've re-acquired IRQs, we need to remap the vectors and
	 * rings together again.
	 */
	for (i = 0; i < pf->num_alloc_vsi; i++) {
		if (pf->vsi[i]) {
			err = FUNC3(pf->vsi[i]);
			if (err)
				goto err_unwind;
			FUNC5(pf->vsi[i]);
		}
	}

	err = FUNC2(pf);
	if (err)
		goto err_unwind;

	if (pf->flags & I40E_FLAG_IWARP_ENABLED)
		FUNC0(pf);

	return 0;

err_unwind:
	while (i--) {
		if (pf->vsi[i])
			FUNC4(pf->vsi[i]);
	}

	return err;
}