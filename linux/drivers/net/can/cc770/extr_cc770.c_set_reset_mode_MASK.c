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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct cc770_priv {TYPE_1__ can; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int CTRL_CCE ; 
 int CTRL_INI ; 
 int /*<<< orphan*/  FUNC0 (struct cc770_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cc770_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC2 (struct cc770_priv*) ; 
 int /*<<< orphan*/  interrupt ; 
 struct cc770_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  status ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct cc770_priv *priv = FUNC3(dev);

	/* Enable configuration and puts chip in bus-off, disable interrupts */
	FUNC1(priv, control, CTRL_CCE | CTRL_INI);

	priv->can.state = CAN_STATE_STOPPED;

	/* Clear interrupts */
	FUNC0(priv, interrupt);

	/* Clear status register */
	FUNC1(priv, status, 0);

	/* Disable all used message objects */
	FUNC2(priv);
}