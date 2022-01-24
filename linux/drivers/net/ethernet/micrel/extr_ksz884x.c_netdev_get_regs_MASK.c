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
struct net_device {int dummy; } ;
struct ksz_hw {scalar_t__ io; } ;
struct hw_regs {int end; int start; } ;
struct ethtool_regs {scalar_t__ version; } ;
struct dev_priv {struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  lock; int /*<<< orphan*/  pdev; struct ksz_hw hw; } ;

/* Variables and functions */
 struct hw_regs* hw_regs_range ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, struct ethtool_regs *regs,
	void *ptr)
{
	struct dev_priv *priv = FUNC2(dev);
	struct dev_info *hw_priv = priv->adapter;
	struct ksz_hw *hw = &hw_priv->hw;
	int *buf = (int *) ptr;
	struct hw_regs *range = hw_regs_range;
	int len;

	FUNC0(&hw_priv->lock);
	regs->version = 0;
	for (len = 0; len < 0x40; len += 4) {
		FUNC3(hw_priv->pdev, len, buf);
		buf++;
	}
	while (range->end > range->start) {
		for (len = range->start; len < range->end; len += 4) {
			*buf = FUNC4(hw->io + len);
			buf++;
		}
		range++;
	}
	FUNC1(&hw_priv->lock);
}