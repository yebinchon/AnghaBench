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
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; } ;
struct atmel_private {scalar_t__ bus_type; int /*<<< orphan*/  firmware; int /*<<< orphan*/  management_timer; } ;

/* Variables and functions */
 scalar_t__ BUS_TYPE_PCCARD ; 
 int /*<<< orphan*/  GCR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct atmel_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

void FUNC9(struct net_device *dev)
{
	struct atmel_private *priv = FUNC5(dev);

	/* put a brick on it... */
	if (priv->bus_type == BUS_TYPE_PCCARD)
		FUNC0(dev, GCR, 0x0060);
	FUNC0(dev, GCR, 0x0040);

	FUNC1(&priv->management_timer);
	FUNC8(dev);
	FUNC7("driver/atmel", NULL);
	FUNC2(dev->irq, dev);
	FUNC4(priv->firmware);
	FUNC6(dev->base_addr, 32);
	FUNC3(dev);
}