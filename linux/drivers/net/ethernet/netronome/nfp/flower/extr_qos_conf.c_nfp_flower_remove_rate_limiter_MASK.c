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
typedef  int /*<<< orphan*/  u32 ;
struct tc_cls_matchall_offload {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nfp_repr {TYPE_2__* app; struct nfp_flower_repr_priv* app_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;
struct nfp_police_config {TYPE_1__ head; int /*<<< orphan*/  netdev_port_id; } ;
struct nfp_flower_repr_priv {struct nfp_police_config qos_table; } ;
struct nfp_flower_priv {int /*<<< orphan*/  qos_stats_work; int /*<<< orphan*/  qos_rate_limiters; } ;
struct nfp_fl_qos {int dummy; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFP_FLOWER_CMSG_TYPE_QOS_DEL ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_police_config*,int /*<<< orphan*/ ,int) ; 
 struct nfp_repr* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_buff* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfp_police_config* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static int
FUNC10(struct nfp_app *app, struct net_device *netdev,
			       struct tc_cls_matchall_offload *flow,
			       struct netlink_ext_ack *extack)
{
	struct nfp_flower_priv *fl_priv = app->priv;
	struct nfp_flower_repr_priv *repr_priv;
	struct nfp_police_config *config;
	struct nfp_repr *repr;
	struct sk_buff *skb;
	u32 netdev_port_id;

	if (!FUNC8(netdev)) {
		FUNC0(extack, "unsupported offload: qos rate limit offload not supported on higher level port");
		return -EOPNOTSUPP;
	}
	repr = FUNC4(netdev);

	netdev_port_id = FUNC9(netdev);
	repr_priv = repr->app_priv;

	if (!repr_priv->qos_table.netdev_port_id) {
		FUNC0(extack, "unsupported offload: cannot remove qos entry that does not exist");
		return -EOPNOTSUPP;
	}

	skb = FUNC6(repr->app, sizeof(struct nfp_police_config),
				    NFP_FLOWER_CMSG_TYPE_QOS_DEL, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	/* Clear all qos associate data for this interface */
	FUNC3(&repr_priv->qos_table, 0, sizeof(struct nfp_fl_qos));
	fl_priv->qos_rate_limiters--;
	if (!fl_priv->qos_rate_limiters)
		FUNC1(&fl_priv->qos_stats_work);

	config = FUNC7(skb);
	FUNC3(config, 0, sizeof(struct nfp_police_config));
	config->head.port = FUNC2(netdev_port_id);
	FUNC5(repr->app->ctrl, skb);

	return 0;
}