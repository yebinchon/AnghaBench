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
 int FM10K_INT_MAP_TIMER0 ; 
 int FM10K_ITR_ENABLE ; 
 size_t FM10K_MBX_VECTOR ; 
 int /*<<< orphan*/  FM10K_VFINT_MAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  fm10k_msix_mbx_vf ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fm10k_intfc*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vf_mbx_data ; 

__attribute__((used)) static int FUNC5(struct fm10k_intfc *interface)
{
	struct msix_entry *entry = &interface->msix_entries[FM10K_MBX_VECTOR];
	struct net_device *dev = interface->netdev;
	struct fm10k_hw *hw = &interface->hw;
	int err;

	/* Use timer0 for interrupt moderation on the mailbox */
	u32 itr = entry->entry | FM10K_INT_MAP_TIMER0;

	/* register mailbox handlers */
	err = hw->mbx.ops.register_handlers(&hw->mbx, vf_mbx_data);
	if (err)
		return err;

	/* request the IRQ */
	err = FUNC3(entry->vector, fm10k_msix_mbx_vf, 0,
			  dev->name, interface);
	if (err) {
		FUNC2(interface, probe, dev,
			  "request_irq for msix_mbx failed: %d\n", err);
		return err;
	}

	/* map all of the interrupt sources */
	FUNC1(hw, FM10K_VFINT_MAP, itr);

	/* enable interrupt */
	FUNC1(hw, FUNC0(entry->entry), FM10K_ITR_ENABLE);

	return 0;
}