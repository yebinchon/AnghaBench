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
struct tc_cls_matchall_offload {int /*<<< orphan*/  stats; } ;
struct nfp_stat_pair {scalar_t__ bytes; scalar_t__ pkts; } ;
struct nfp_repr {struct nfp_flower_repr_priv* app_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_update; struct nfp_stat_pair prev_stats; struct nfp_stat_pair curr_stats; int /*<<< orphan*/  netdev_port_id; } ;
struct nfp_flower_repr_priv {TYPE_1__ qos_table; } ;
struct nfp_flower_priv {int /*<<< orphan*/  qos_stats_lock; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct nfp_repr* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct nfp_app *app, struct net_device *netdev,
			      struct tc_cls_matchall_offload *flow,
			      struct netlink_ext_ack *extack)
{
	struct nfp_flower_priv *fl_priv = app->priv;
	struct nfp_flower_repr_priv *repr_priv;
	struct nfp_stat_pair *curr_stats;
	struct nfp_stat_pair *prev_stats;
	u64 diff_bytes, diff_pkts;
	struct nfp_repr *repr;

	if (!FUNC3(netdev)) {
		FUNC0(extack, "unsupported offload: qos rate limit offload not supported on higher level port");
		return -EOPNOTSUPP;
	}
	repr = FUNC2(netdev);

	repr_priv = repr->app_priv;
	if (!repr_priv->qos_table.netdev_port_id) {
		FUNC0(extack, "unsupported offload: cannot find qos entry for stats update");
		return -EOPNOTSUPP;
	}

	FUNC4(&fl_priv->qos_stats_lock);
	curr_stats = &repr_priv->qos_table.curr_stats;
	prev_stats = &repr_priv->qos_table.prev_stats;
	diff_pkts = curr_stats->pkts - prev_stats->pkts;
	diff_bytes = curr_stats->bytes - prev_stats->bytes;
	prev_stats->pkts = curr_stats->pkts;
	prev_stats->bytes = curr_stats->bytes;
	FUNC5(&fl_priv->qos_stats_lock);

	FUNC1(&flow->stats, diff_bytes, diff_pkts,
			  repr_priv->qos_table.last_update);
	return 0;
}