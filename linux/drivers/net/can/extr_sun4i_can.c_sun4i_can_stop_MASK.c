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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct sun4ican_priv {scalar_t__ base; TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 scalar_t__ SUN4I_REG_INTEN_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct sun4ican_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct sun4ican_priv *priv = FUNC1(dev);
	int err;

	priv->can.state = CAN_STATE_STOPPED;
	/* we need to enter reset mode */
	err = FUNC2(dev);
	if (err) {
		FUNC0(dev, "could not enter reset mode\n");
		return err;
	}

	/* disable all interrupts */
	FUNC3(0, priv->base + SUN4I_REG_INTEN_ADDR);

	return 0;
}