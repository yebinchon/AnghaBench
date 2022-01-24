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
struct gs_usb {int /*<<< orphan*/  rx_submitted; int /*<<< orphan*/  active_channels; } ;
struct gs_can {TYPE_1__* tx_context; int /*<<< orphan*/  active_tx_urbs; int /*<<< orphan*/  tx_submitted; struct gs_usb* parent; } ;
struct TYPE_2__ {int echo_id; struct gs_can* dev; } ;

/* Variables and functions */
 int GS_MAX_TX_URBS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct gs_can*) ; 
 struct gs_can* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	int rc;
	struct gs_can *dev = FUNC4(netdev);
	struct gs_usb *parent = dev->parent;

	FUNC6(netdev);

	/* Stop polling */
	if (FUNC0(&parent->active_channels))
		FUNC7(&parent->rx_submitted);

	/* Stop sending URBs */
	FUNC7(&dev->tx_submitted);
	FUNC1(&dev->active_tx_urbs, 0);

	/* reset the device */
	rc = FUNC3(dev);
	if (rc < 0)
		FUNC5(netdev, "Couldn't shutdown device (err=%d)", rc);

	/* reset tx contexts */
	for (rc = 0; rc < GS_MAX_TX_URBS; rc++) {
		dev->tx_context[rc].dev = dev;
		dev->tx_context[rc].echo_id = GS_MAX_TX_URBS;
	}

	/* close the netdev */
	FUNC2(netdev);

	return 0;
}