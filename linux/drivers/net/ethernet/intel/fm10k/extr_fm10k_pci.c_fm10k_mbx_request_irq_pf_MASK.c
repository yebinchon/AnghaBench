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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  name; } ;
struct msix_entry {int entry; int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int (* register_handlers ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mbx; } ;
struct fm10k_intfc {struct fm10k_hw hw; struct net_device* netdev; struct msix_entry* msix_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_EIMR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FM10K_INT_MAP_IMMEDIATE ; 
 int FM10K_INT_MAP_TIMER0 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FM10K_ITR_ENABLE ; 
 size_t FM10K_MBX_VECTOR ; 
 int /*<<< orphan*/  FUM_FAULT ; 
 int /*<<< orphan*/  MAILBOX ; 
 int /*<<< orphan*/  MAXHOLDTIME ; 
 int /*<<< orphan*/  PCA_FAULT ; 
 int /*<<< orphan*/  SRAMERROR ; 
 int /*<<< orphan*/  SWITCHNOTREADY ; 
 int /*<<< orphan*/  SWITCHREADY ; 
 int /*<<< orphan*/  VFLR ; 
 int /*<<< orphan*/  fm10k_int_mailbox ; 
 int /*<<< orphan*/  fm10k_int_max_hold_time ; 
 int /*<<< orphan*/  fm10k_int_pcie_fault ; 
 int /*<<< orphan*/  fm10k_int_sram ; 
 int /*<<< orphan*/  fm10k_int_switch_up_down ; 
 int /*<<< orphan*/  fm10k_int_vflr ; 
 int /*<<< orphan*/  fm10k_msix_mbx_pf ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  pf_mbx_data ; 
 int /*<<< orphan*/  probe ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fm10k_intfc*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fm10k_intfc *interface)
{
	struct msix_entry *entry = &interface->msix_entries[FM10K_MBX_VECTOR];
	struct net_device *dev = interface->netdev;
	struct fm10k_hw *hw = &interface->hw;
	int err;

	/* Use timer0 for interrupt moderation on the mailbox */
	u32 mbx_itr = entry->entry | FM10K_INT_MAP_TIMER0;
	u32 other_itr = entry->entry | FM10K_INT_MAP_IMMEDIATE;

	/* register mailbox handlers */
	err = hw->mbx.ops.register_handlers(&hw->mbx, pf_mbx_data);
	if (err)
		return err;

	/* request the IRQ */
	err = FUNC5(entry->vector, fm10k_msix_mbx_pf, 0,
			  dev->name, interface);
	if (err) {
		FUNC4(interface, probe, dev,
			  "request_irq for msix_mbx failed: %d\n", err);
		return err;
	}

	/* Enable interrupts w/ no moderation for "other" interrupts */
	FUNC3(hw, FUNC1(fm10k_int_pcie_fault), other_itr);
	FUNC3(hw, FUNC1(fm10k_int_switch_up_down), other_itr);
	FUNC3(hw, FUNC1(fm10k_int_sram), other_itr);
	FUNC3(hw, FUNC1(fm10k_int_max_hold_time), other_itr);
	FUNC3(hw, FUNC1(fm10k_int_vflr), other_itr);

	/* Enable interrupts w/ moderation for mailbox */
	FUNC3(hw, FUNC1(fm10k_int_mailbox), mbx_itr);

	/* Enable individual interrupt causes */
	FUNC3(hw, FM10K_EIMR, FUNC0(PCA_FAULT) |
					FUNC0(FUM_FAULT) |
					FUNC0(MAILBOX) |
					FUNC0(SWITCHREADY) |
					FUNC0(SWITCHNOTREADY) |
					FUNC0(SRAMERROR) |
					FUNC0(VFLR) |
					FUNC0(MAXHOLDTIME));

	/* enable interrupt */
	FUNC3(hw, FUNC2(entry->entry), FM10K_ITR_ENABLE);

	return 0;
}