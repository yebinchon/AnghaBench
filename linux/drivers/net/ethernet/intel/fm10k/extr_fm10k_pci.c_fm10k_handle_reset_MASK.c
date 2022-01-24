#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  features; int /*<<< orphan*/  addr_assign_type; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  perm_addr; } ;
struct TYPE_5__ {int (* reset_hw ) (struct fm10k_hw*) ;int (* init_hw ) (struct fm10k_hw*) ;} ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ vlan_override; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  addr; TYPE_1__ ops; } ;
struct fm10k_hw {TYPE_2__ mac; } ;
struct fm10k_intfc {int /*<<< orphan*/  state; TYPE_3__* pdev; struct fm10k_hw hw; struct net_device* netdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  NET_ADDR_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __FM10K_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int FUNC5 (struct fm10k_intfc*) ; 
 int FUNC6 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ fm10k_mac_vf ; 
 int /*<<< orphan*/  FUNC8 (struct fm10k_intfc*) ; 
 int FUNC9 (struct fm10k_intfc*) ; 
 int FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int FUNC18 (struct fm10k_hw*) ; 
 int FUNC19 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct fm10k_intfc *interface)
{
	struct net_device *netdev = interface->netdev;
	struct fm10k_hw *hw = &interface->hw;
	int err;

	FUNC0(!FUNC20(__FM10K_RESETTING, interface->state));

	FUNC16();

	FUNC15(interface->pdev);

	/* reset and initialize the hardware so it is in a known state */
	err = hw->mac.ops.reset_hw(hw);
	if (err) {
		FUNC2(&interface->pdev->dev, "reset_hw failed: %d\n", err);
		goto reinit_err;
	}

	err = hw->mac.ops.init_hw(hw);
	if (err) {
		FUNC2(&interface->pdev->dev, "init_hw failed: %d\n", err);
		goto reinit_err;
	}

	err = FUNC6(interface);
	if (err) {
		FUNC2(&interface->pdev->dev,
			"init_queueing_scheme failed: %d\n", err);
		goto reinit_err;
	}

	/* re-associate interrupts */
	err = FUNC9(interface);
	if (err)
		goto err_mbx_irq;

	err = FUNC5(interface);
	if (err)
		goto err_open;

	/* update hardware address for VFs if perm_addr has changed */
	if (hw->mac.type == fm10k_mac_vf) {
		if (FUNC12(hw->mac.perm_addr)) {
			FUNC3(hw->mac.addr, hw->mac.perm_addr);
			FUNC3(netdev->perm_addr, hw->mac.perm_addr);
			FUNC3(netdev->dev_addr, hw->mac.perm_addr);
			netdev->addr_assign_type &= ~NET_ADDR_RANDOM;
		}

		if (hw->mac.vlan_override)
			netdev->features &= ~NETIF_F_HW_VLAN_CTAG_RX;
		else
			netdev->features |= NETIF_F_HW_VLAN_CTAG_RX;
	}

	err = FUNC14(netdev) ? FUNC10(netdev) : 0;
	if (err)
		goto err_open;

	FUNC7(interface->pdev);

	FUNC17();

	FUNC11(interface);

	FUNC1(__FM10K_RESETTING, interface->state);

	return err;
err_open:
	FUNC8(interface);
err_mbx_irq:
	FUNC4(interface);
reinit_err:
	FUNC13(netdev);

	FUNC17();

	FUNC1(__FM10K_RESETTING, interface->state);

	return err;
}