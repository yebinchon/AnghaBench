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
struct ucan_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  rx_urbs; int /*<<< orphan*/  tx_urbs; TYPE_1__ can; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_STOPPED ; 
 int /*<<< orphan*/  UCAN_COMMAND_RESET ; 
 int /*<<< orphan*/  UCAN_COMMAND_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct ucan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct ucan_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ucan_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	int ret;
	struct ucan_priv *up = FUNC2(netdev);

	up->can.state = CAN_STATE_STOPPED;

	/* stop sending data */
	FUNC6(&up->tx_urbs);

	/* stop receiving data */
	FUNC6(&up->rx_urbs);

	/* stop and reset can device */
	ret = FUNC4(up, UCAN_COMMAND_STOP, 0, 0);
	if (ret < 0)
		FUNC1(up->netdev,
			   "could not stop device, code: %d\n",
			   ret);

	ret = FUNC4(up, UCAN_COMMAND_RESET, 0, 0);
	if (ret < 0)
		FUNC1(up->netdev,
			   "could not reset device, code: %d\n",
			   ret);

	FUNC3(netdev);

	FUNC5(up);

	FUNC0(up->netdev);
	return 0;
}