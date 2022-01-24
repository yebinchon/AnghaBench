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
struct veth_rq_stats {scalar_t__ xdp_packets; scalar_t__ xdp_bytes; int /*<<< orphan*/  xdp_drops; } ;
struct veth_priv {int /*<<< orphan*/  peer; } ;
struct rtnl_link_stats64 {scalar_t__ tx_packets; scalar_t__ tx_bytes; scalar_t__ rx_packets; scalar_t__ rx_bytes; int /*<<< orphan*/  rx_dropped; scalar_t__ tx_dropped; } ;
struct pcpu_lstats {scalar_t__ packets; scalar_t__ bytes; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct veth_priv* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct veth_rq_stats*,struct net_device*) ; 
 scalar_t__ FUNC5 (struct pcpu_lstats*,struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
			     struct rtnl_link_stats64 *tot)
{
	struct veth_priv *priv = FUNC0(dev);
	struct net_device *peer;
	struct veth_rq_stats rx;
	struct pcpu_lstats tx;

	tot->tx_dropped = FUNC5(&tx, dev);
	tot->tx_bytes = tx.bytes;
	tot->tx_packets = tx.packets;

	FUNC4(&rx, dev);
	tot->rx_dropped = rx.xdp_drops;
	tot->rx_bytes = rx.xdp_bytes;
	tot->rx_packets = rx.xdp_packets;

	FUNC2();
	peer = FUNC1(priv->peer);
	if (peer) {
		tot->rx_dropped += FUNC5(&tx, peer);
		tot->rx_bytes += tx.bytes;
		tot->rx_packets += tx.packets;

		FUNC4(&rx, peer);
		tot->tx_bytes += rx.xdp_bytes;
		tot->tx_packets += rx.xdp_packets;
	}
	FUNC3();
}