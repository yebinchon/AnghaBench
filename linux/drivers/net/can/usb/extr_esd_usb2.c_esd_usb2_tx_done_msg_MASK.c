#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device_stats {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {struct net_device_stats stats; } ;
struct esd_usb2_net_priv {int /*<<< orphan*/  active_tx_jobs; struct esd_tx_urb_context* tx_contexts; struct net_device* netdev; } ;
struct TYPE_3__ {int hnd; int /*<<< orphan*/  status; } ;
struct TYPE_4__ {TYPE_1__ txdone; } ;
struct esd_usb2_msg {TYPE_2__ msg; } ;
struct esd_tx_urb_context {int echo_index; scalar_t__ dlc; } ;

/* Variables and functions */
 int MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct esd_usb2_net_priv *priv,
				 struct esd_usb2_msg *msg)
{
	struct net_device_stats *stats = &priv->netdev->stats;
	struct net_device *netdev = priv->netdev;
	struct esd_tx_urb_context *context;

	if (!FUNC3(netdev))
		return;

	context = &priv->tx_contexts[msg->msg.txdone.hnd & (MAX_TX_URBS - 1)];

	if (!msg->msg.txdone.status) {
		stats->tx_packets++;
		stats->tx_bytes += context->dlc;
		FUNC2(netdev, context->echo_index);
	} else {
		stats->tx_errors++;
		FUNC1(netdev, context->echo_index);
	}

	/* Release context */
	context->echo_index = MAX_TX_URBS;
	FUNC0(&priv->active_tx_jobs);

	FUNC4(netdev);
}