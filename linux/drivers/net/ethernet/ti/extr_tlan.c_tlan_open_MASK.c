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
struct tlan_priv {int /*<<< orphan*/  tlan_rev; int /*<<< orphan*/  media_timer; int /*<<< orphan*/  timer; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_DEF_REVISION ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct tlan_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlan_handle_interrupt ; 
 int /*<<< orphan*/ * tlan_phy_monitor ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct tlan_priv	*priv = FUNC2(dev);
	int		err;

	priv->tlan_rev = FUNC5(dev->base_addr, TLAN_DEF_REVISION);
	err = FUNC3(dev->irq, tlan_handle_interrupt, IRQF_SHARED,
			  dev->name, dev);

	if (err) {
		FUNC1(dev, "Cannot open because IRQ %d is already in use\n",
			   dev->irq);
		return err;
	}

	FUNC4(&priv->timer, NULL, 0);
	FUNC4(&priv->media_timer, tlan_phy_monitor, 0);

	FUNC6(dev);

	FUNC0(TLAN_DEBUG_GNRL, "%s: Opened.  TLAN Chip Rev: %x\n",
		 dev->name, priv->tlan_rev);

	return 0;

}