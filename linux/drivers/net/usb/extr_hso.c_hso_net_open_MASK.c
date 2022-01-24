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
struct net_device {int /*<<< orphan*/  dev; } ;
struct iphdr {int dummy; } ;
struct hso_net {int rx_buf_missing; int /*<<< orphan*/  parent; int /*<<< orphan*/  flags; int /*<<< orphan*/  net_lock; scalar_t__ rx_buf_size; int /*<<< orphan*/  rx_parse_state; int /*<<< orphan*/ * skb_tx_buf; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HSO_NET_RUNNING ; 
 int /*<<< orphan*/  WAIT_IP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct hso_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct net_device *net)
{
	struct hso_net *odev = FUNC2(net);
	unsigned long flags = 0;

	if (!odev) {
		FUNC0(&net->dev, "No net device !\n");
		return -ENODEV;
	}

	odev->skb_tx_buf = NULL;

	/* setup environment */
	FUNC5(&odev->net_lock, flags);
	odev->rx_parse_state = WAIT_IP;
	odev->rx_buf_size = 0;
	odev->rx_buf_missing = sizeof(struct iphdr);
	FUNC6(&odev->net_lock, flags);

	/* We are up and running. */
	FUNC4(HSO_NET_RUNNING, &odev->flags);
	FUNC1(odev->parent);

	/* Tell the kernel we are ready to start receiving from it */
	FUNC3(net);

	return 0;
}