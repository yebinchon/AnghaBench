#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device_stats {int /*<<< orphan*/  rx_errors; } ;
struct kvaser_usb_net_priv {TYPE_3__* netdev; } ;
struct TYPE_6__ {int flag; } ;
struct TYPE_5__ {TYPE_2__ rx_can_header; } ;
struct kvaser_cmd {TYPE_1__ u; } ;
struct TYPE_7__ {struct net_device_stats stats; } ;

/* Variables and functions */
 int MSG_FLAG_ERROR_FRAME ; 
 int MSG_FLAG_NERR ; 
 int MSG_FLAG_OVERRUN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 

__attribute__((used)) static void FUNC2(const struct kvaser_usb_net_priv *priv,
				       const struct kvaser_cmd *cmd)
{
	if (cmd->u.rx_can_header.flag & (MSG_FLAG_ERROR_FRAME |
					 MSG_FLAG_NERR)) {
		struct net_device_stats *stats = &priv->netdev->stats;

		FUNC1(priv->netdev, "Unknown error (flags: 0x%02x)\n",
			   cmd->u.rx_can_header.flag);

		stats->rx_errors++;
		return;
	}

	if (cmd->u.rx_can_header.flag & MSG_FLAG_OVERRUN)
		FUNC0(priv->netdev);
}