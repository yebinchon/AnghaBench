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
struct ucan_priv {int /*<<< orphan*/  context_lock; int /*<<< orphan*/  netdev; int /*<<< orphan*/  available_tx_urbs; TYPE_1__ can; } ;
struct net_device {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  UCAN_COMMAND_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct ucan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct ucan_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, enum can_mode mode)
{
	int ret;
	unsigned long flags;
	struct ucan_priv *up = FUNC1(netdev);

	switch (mode) {
	case CAN_MODE_START:
		FUNC0(up->netdev, "restarting device\n");

		ret = FUNC5(up, UCAN_COMMAND_RESTART, 0, 0);
		up->can.state = CAN_STATE_ERROR_ACTIVE;

		/* check if queue can be restarted,
		 * up->available_tx_urbs must be protected by the
		 * lock
		 */
		FUNC3(&up->context_lock, flags);

		if (up->available_tx_urbs > 0)
			FUNC2(up->netdev);

		FUNC4(&up->context_lock, flags);

		return ret;
	default:
		return -EOPNOTSUPP;
	}
}