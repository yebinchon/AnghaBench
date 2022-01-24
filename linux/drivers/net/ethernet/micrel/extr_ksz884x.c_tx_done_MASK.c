#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct ksz_hw {int dev_count; TYPE_1__* port_info; } ;
struct dev_info {struct ksz_hw hw; } ;
struct TYPE_2__ {struct net_device* pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_info*,int) ; 

__attribute__((used)) static void FUNC4(struct dev_info *hw_priv)
{
	struct ksz_hw *hw = &hw_priv->hw;
	int port;

	FUNC3(hw_priv, 1);

	for (port = 0; port < hw->dev_count; port++) {
		struct net_device *dev = hw->port_info[port].pdev;

		if (FUNC1(dev) && FUNC0(dev))
			FUNC2(dev);
	}
}