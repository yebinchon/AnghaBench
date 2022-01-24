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
struct pci_dev {int dummy; } ;
struct aq_nic_s {TYPE_1__* ndev; TYPE_2__* aq_hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  mmio; } ;
struct TYPE_4__ {scalar_t__ reg_state; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct aq_nic_s* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pdev)
{
	struct aq_nic_s *self = FUNC7(pdev);

	if (self->ndev) {
		FUNC0(self);
		if (self->ndev->reg_state == NETREG_REGISTERED)
			FUNC9(self->ndev);
		FUNC1(self);
		FUNC2(self);
		FUNC4(self->aq_hw->mmio);
		FUNC5(self->aq_hw);
		FUNC8(pdev);
		FUNC3(self->ndev);
	}

	FUNC6(pdev);
}