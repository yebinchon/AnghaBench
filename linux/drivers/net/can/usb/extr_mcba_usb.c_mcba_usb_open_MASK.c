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
struct mcba_priv {int can_speed_check; TYPE_1__ can; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_OPEN ; 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct mcba_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev)
{
	struct mcba_priv *priv = FUNC1(netdev);
	int err;

	/* common open */
	err = FUNC3(netdev);
	if (err)
		return err;

	priv->can_speed_check = true;
	priv->can.state = CAN_STATE_ERROR_ACTIVE;

	FUNC0(netdev, CAN_LED_EVENT_OPEN);
	FUNC2(netdev);

	return 0;
}