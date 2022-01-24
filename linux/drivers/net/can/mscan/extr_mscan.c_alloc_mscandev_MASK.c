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
struct net_device {int /*<<< orphan*/  flags; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_3__ {int ctrlmode_supported; int /*<<< orphan*/  do_set_mode; int /*<<< orphan*/  do_set_bittiming; int /*<<< orphan*/ * bittiming_const; } ;
struct mscan_priv {TYPE_2__* tx_queue; TYPE_1__ can; int /*<<< orphan*/  napi; } ;
struct TYPE_4__ {int id; int mask; } ;

/* Variables and functions */
 int CAN_CTRLMODE_3_SAMPLES ; 
 int CAN_CTRLMODE_LISTENONLY ; 
 int /*<<< orphan*/  IFF_ECHO ; 
 int /*<<< orphan*/  MSCAN_ECHO_SKB_MAX ; 
 int TX_QUEUE_SIZE ; 
 struct net_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mscan_bittiming_const ; 
 int /*<<< orphan*/  mscan_do_set_bittiming ; 
 int /*<<< orphan*/  mscan_do_set_mode ; 
 int /*<<< orphan*/  mscan_netdev_ops ; 
 int /*<<< orphan*/  mscan_rx_poll ; 
 struct mscan_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

struct net_device *FUNC3(void)
{
	struct net_device *dev;
	struct mscan_priv *priv;
	int i;

	dev = FUNC0(sizeof(struct mscan_priv), MSCAN_ECHO_SKB_MAX);
	if (!dev)
		return NULL;
	priv = FUNC1(dev);

	dev->netdev_ops = &mscan_netdev_ops;

	dev->flags |= IFF_ECHO;	/* we support local echo */

	FUNC2(dev, &priv->napi, mscan_rx_poll, 8);

	priv->can.bittiming_const = &mscan_bittiming_const;
	priv->can.do_set_bittiming = mscan_do_set_bittiming;
	priv->can.do_set_mode = mscan_do_set_mode;
	priv->can.ctrlmode_supported = CAN_CTRLMODE_3_SAMPLES |
		CAN_CTRLMODE_LISTENONLY;

	for (i = 0; i < TX_QUEUE_SIZE; i++) {
		priv->tx_queue[i].id = i;
		priv->tx_queue[i].mask = 1 << i;
	}

	return dev;
}