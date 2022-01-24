#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* disconnect ) (struct fm10k_hw*,TYPE_3__*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; TYPE_3__ mbx; } ;
struct fm10k_intfc {struct msix_entry* msix_entries; struct fm10k_hw hw; } ;

/* Variables and functions */
 int FM10K_EIMR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t) ; 
 int FM10K_ITR_MASK_SET ; 
 size_t FM10K_MBX_VECTOR ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUM_FAULT ; 
 int /*<<< orphan*/  MAILBOX ; 
 int /*<<< orphan*/  MAXHOLDTIME ; 
 int /*<<< orphan*/  PCA_FAULT ; 
 int /*<<< orphan*/  SRAMERROR ; 
 int /*<<< orphan*/  SWITCHNOTREADY ; 
 int /*<<< orphan*/  SWITCHREADY ; 
 int /*<<< orphan*/  VFLR ; 
 scalar_t__ fm10k_mac_pf ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_hw*,TYPE_3__*) ; 

void FUNC6(struct fm10k_intfc *interface)
{
	struct fm10k_hw *hw = &interface->hw;
	struct msix_entry *entry;
	int itr_reg;

	/* no mailbox IRQ to free if MSI-X is not enabled */
	if (!interface->msix_entries)
		return;

	entry = &interface->msix_entries[FM10K_MBX_VECTOR];

	/* disconnect the mailbox */
	hw->mbx.ops.disconnect(hw, &hw->mbx);

	/* disable Mailbox cause */
	if (hw->mac.type == fm10k_mac_pf) {
		FUNC3(hw, FM10K_EIMR,
				FUNC0(PCA_FAULT) |
				FUNC0(FUM_FAULT) |
				FUNC0(MAILBOX) |
				FUNC0(SWITCHREADY) |
				FUNC0(SWITCHNOTREADY) |
				FUNC0(SRAMERROR) |
				FUNC0(VFLR) |
				FUNC0(MAXHOLDTIME));
		itr_reg = FUNC1(FM10K_MBX_VECTOR);
	} else {
		itr_reg = FUNC2(FM10K_MBX_VECTOR);
	}

	FUNC3(hw, itr_reg, FM10K_ITR_MASK_SET);

	FUNC4(entry->vector, interface);
}