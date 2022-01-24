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
struct pinctrl {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct c_can_priv {scalar_t__ type; int /*<<< orphan*/  device; TYPE_1__ can; int /*<<< orphan*/  comm_rcv_high; } ;

/* Variables and functions */
 scalar_t__ BOSCH_D_CAN ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int /*<<< orphan*/  IF_COMM_RCV_HIGH ; 
 int /*<<< orphan*/  IF_COMM_RCV_LOW ; 
 int /*<<< orphan*/  FUNC0 (struct pinctrl*) ; 
 int FUNC1 (struct net_device*) ; 
 struct c_can_priv* FUNC2 (struct net_device*) ; 
 struct pinctrl* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pinctrl*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct c_can_priv *priv = FUNC2(dev);
	int err;
	struct pinctrl *p;

	/* basic c_can configuration */
	err = FUNC1(dev);
	if (err)
		return err;

	/* Setup the command for new messages */
	priv->comm_rcv_high = priv->type != BOSCH_D_CAN ?
		IF_COMM_RCV_LOW : IF_COMM_RCV_HIGH;

	priv->can.state = CAN_STATE_ERROR_ACTIVE;

	/* Attempt to use "active" if available else use "default" */
	p = FUNC3(priv->device, "active");
	if (!FUNC0(p))
		FUNC5(p);
	else
		FUNC4(priv->device);

	return 0;
}