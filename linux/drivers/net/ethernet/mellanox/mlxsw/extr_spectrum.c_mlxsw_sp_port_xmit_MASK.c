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
struct mlxsw_sp_port_pcpu_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct mlxsw_sp_port {TYPE_1__* pcpu_stats; int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct mlxsw_skb_cb {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;

/* Variables and functions */
 scalar_t__ MLXSW_TXHDR_LEN ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,struct mlxsw_tx_info const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct mlxsw_tx_info const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct mlxsw_tx_info const*) ; 
 struct mlxsw_sp_port* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_port_pcpu_stats* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC15(struct sk_buff *skb,
				      struct net_device *dev)
{
	struct mlxsw_sp_port *mlxsw_sp_port = FUNC7(dev);
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	struct mlxsw_sp_port_pcpu_stats *pcpu_stats;
	const struct mlxsw_tx_info tx_info = {
		.local_port = mlxsw_sp_port->local_port,
		.is_emad = false,
	};
	u64 len;
	int err;

	FUNC3(skb->cb, 0, sizeof(struct mlxsw_skb_cb));

	if (FUNC5(mlxsw_sp->core, &tx_info))
		return NETDEV_TX_BUSY;

	if (FUNC14(FUNC8(skb) < MLXSW_TXHDR_LEN)) {
		struct sk_buff *skb_orig = skb;

		skb = FUNC9(skb, MLXSW_TXHDR_LEN);
		if (!skb) {
			FUNC10(mlxsw_sp_port->pcpu_stats->tx_dropped);
			FUNC1(skb_orig);
			return NETDEV_TX_OK;
		}
		FUNC0(skb_orig);
	}

	if (FUNC2(skb)) {
		FUNC10(mlxsw_sp_port->pcpu_stats->tx_dropped);
		return NETDEV_TX_OK;
	}

	FUNC6(skb, &tx_info);
	/* TX header is consumed by HW on the way so we shouldn't count its
	 * bytes as being sent.
	 */
	len = skb->len - MLXSW_TXHDR_LEN;

	/* Due to a race we might fail here because of a full queue. In that
	 * unlikely case we simply drop the packet.
	 */
	err = FUNC4(mlxsw_sp->core, skb, &tx_info);

	if (!err) {
		pcpu_stats = FUNC11(mlxsw_sp_port->pcpu_stats);
		FUNC12(&pcpu_stats->syncp);
		pcpu_stats->tx_packets++;
		pcpu_stats->tx_bytes += len;
		FUNC13(&pcpu_stats->syncp);
	} else {
		FUNC10(mlxsw_sp_port->pcpu_stats->tx_dropped);
		FUNC1(skb);
	}
	return NETDEV_TX_OK;
}