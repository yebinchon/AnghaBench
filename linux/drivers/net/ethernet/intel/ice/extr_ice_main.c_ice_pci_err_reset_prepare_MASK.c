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
struct pci_dev {int dummy; } ;
struct ice_pf {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __ICE_PFR_REQ ; 
 int /*<<< orphan*/  __ICE_PREPARED_FOR_RESET ; 
 int /*<<< orphan*/  __ICE_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_pf*) ; 
 struct ice_pf* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct ice_pf *pf = FUNC2(pdev);

	if (!FUNC4(__ICE_SUSPENDED, pf->state)) {
		FUNC1(pf);

		if (!FUNC4(__ICE_PREPARED_FOR_RESET, pf->state)) {
			FUNC3(__ICE_PFR_REQ, pf->state);
			FUNC0(pf);
		}
	}
}