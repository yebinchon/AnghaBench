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
typedef  scalar_t__ u64 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  cb; } ;
struct net_device {int dummy; } ;
struct mlxsw_tx_info {int is_emad; int /*<<< orphan*/  local_port; } ;
struct mlxsw_sx_port_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct mlxsw_sx_port {TYPE_1__* pcpu_stats; int /*<<< orphan*/  local_port; struct mlxsw_sx* mlxsw_sx; } ;
struct mlxsw_sx {int /*<<< orphan*/  core; } ;
struct mlxsw_skb_cb {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;

/* Variables and functions */
 scalar_t__ MLXSW_TXHDR_LEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,struct mlxsw_tx_info const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct mlxsw_tx_info const*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct mlxsw_tx_info const*) ; 
 struct mlxsw_sx_port* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct mlxsw_sx_port_pcpu_stats* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC14(struct sk_buff *skb,
				      struct net_device *dev)
{
	struct mlxsw_sx_port *mlxsw_sx_port = FUNC6(dev);
	struct mlxsw_sx *mlxsw_sx = mlxsw_sx_port->mlxsw_sx;
	struct mlxsw_sx_port_pcpu_stats *pcpu_stats;
	const struct mlxsw_tx_info tx_info = {
		.local_port = mlxsw_sx_port->local_port,
		.is_emad = false,
	};
	u64 len;
	int err;

	FUNC2(skb->cb, 0, sizeof(struct mlxsw_skb_cb));

	if (FUNC4(mlxsw_sx->core, &tx_info))
		return NETDEV_TX_BUSY;

	if (FUNC13(FUNC7(skb) < MLXSW_TXHDR_LEN)) {
		struct sk_buff *skb_orig = skb;

		skb = FUNC8(skb, MLXSW_TXHDR_LEN);
		if (!skb) {
			FUNC9(mlxsw_sx_port->pcpu_stats->tx_dropped);
			FUNC1(skb_orig);
			return NETDEV_TX_OK;
		}
		FUNC0(skb_orig);
	}
	FUNC5(skb, &tx_info);
	/* TX header is consumed by HW on the way so we shouldn't count its
	 * bytes as being sent.
	 */
	len = skb->len - MLXSW_TXHDR_LEN;
	/* Due to a race we might fail here because of a full queue. In that
	 * unlikely case we simply drop the packet.
	 */
	err = FUNC3(mlxsw_sx->core, skb, &tx_info);

	if (!err) {
		pcpu_stats = FUNC10(mlxsw_sx_port->pcpu_stats);
		FUNC11(&pcpu_stats->syncp);
		pcpu_stats->tx_packets++;
		pcpu_stats->tx_bytes += len;
		FUNC12(&pcpu_stats->syncp);
	} else {
		FUNC9(mlxsw_sx_port->pcpu_stats->tx_dropped);
		FUNC1(skb);
	}
	return NETDEV_TX_OK;
}