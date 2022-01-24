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
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  ring_phys; } ;
struct TYPE_3__ {int /*<<< orphan*/  ring_phys; } ;
struct ksz_hw {TYPE_2__ rx_desc_info; TYPE_1__ tx_desc_info; scalar_t__ multi_list_size; scalar_t__ all_multi; scalar_t__ promiscuous; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  tx_tasklet; int /*<<< orphan*/  rx_tasklet; struct net_device* dev; struct ksz_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct dev_info*,struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ksz_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_info*) ; 
 int /*<<< orphan*/  netdev_intr ; 
 struct dev_priv* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  rx_proc_task ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  tx_proc_task ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct dev_priv *priv = FUNC5(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;
	int rc = 0;

	/* Remember the network device that requests interrupts. */
	hw_priv->dev = dev;
	rc = FUNC6(dev->irq, netdev_intr, IRQF_SHARED, dev->name, dev);
	if (rc)
		return rc;
	FUNC7(&hw_priv->rx_tasklet, rx_proc_task,
		     (unsigned long) hw_priv);
	FUNC7(&hw_priv->tx_tasklet, tx_proc_task,
		     (unsigned long) hw_priv);

	hw->promiscuous = 0;
	hw->all_multi = 0;
	hw->multi_list_size = 0;

	FUNC1(hw);

	FUNC3(hw,
		hw->tx_desc_info.ring_phys, hw->rx_desc_info.ring_phys);
	FUNC2(hw);
	FUNC0(hw_priv, hw);
	FUNC4(hw_priv);
	return 0;
}