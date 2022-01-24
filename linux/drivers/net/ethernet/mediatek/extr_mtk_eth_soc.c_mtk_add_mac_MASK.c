#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct phylink {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; TYPE_2__* dev; } ;
struct mtk_mac {int id; struct phylink* phylink; struct device_node* of_node; TYPE_3__ phylink_config; int /*<<< orphan*/  speed; int /*<<< orphan*/  mode; int /*<<< orphan*/  interface; TYPE_6__* hw_stats; scalar_t__ hwlro_ip_cnt; int /*<<< orphan*/  hwlro_ip; struct mtk_eth* hw; } ;
struct mtk_eth {TYPE_4__** netdev; int /*<<< orphan*/ * irq; TYPE_1__* soc; scalar_t__ hwlro; scalar_t__ base; int /*<<< orphan*/  dev; struct mtk_mac** mac; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_13__ {int reg_offset; int /*<<< orphan*/  syncp; int /*<<< orphan*/  stats_lock; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct TYPE_12__ {int watchdog_timeo; unsigned long base_addr; int hw_features; int vlan_features; int features; TYPE_2__ dev; int /*<<< orphan*/  irq; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_9__ {int hw_features; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct phylink*) ; 
 int /*<<< orphan*/  MLO_AN_PHY ; 
 int MTK_MAC_COUNT ; 
 int MTK_STAT_OFFSET ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_LRO ; 
 int /*<<< orphan*/  PHYLINK_NETDEV ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_NA ; 
 int FUNC1 (struct phylink*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 TYPE_4__* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mtk_ethtool_ops ; 
 int /*<<< orphan*/  mtk_netdev_ops ; 
 int /*<<< orphan*/  mtk_phylink_ops ; 
 struct mtk_mac* FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct phylink* FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct mtk_eth *eth, struct device_node *np)
{
	const __be32 *_id = FUNC12(np, "reg", NULL);
	struct phylink *phylink;
	int phy_mode, id, err;
	struct mtk_mac *mac;

	if (!_id) {
		FUNC5(eth->dev, "missing mac id\n");
		return -EINVAL;
	}

	id = FUNC4(_id);
	if (id >= MTK_MAC_COUNT) {
		FUNC5(eth->dev, "%d is not a valid mac id\n", id);
		return -EINVAL;
	}

	if (eth->netdev[id]) {
		FUNC5(eth->dev, "duplicate mac id found: %d\n", id);
		return -EINVAL;
	}

	eth->netdev[id] = FUNC3(sizeof(*mac));
	if (!eth->netdev[id]) {
		FUNC5(eth->dev, "alloc_etherdev failed\n");
		return -ENOMEM;
	}
	mac = FUNC9(eth->netdev[id]);
	eth->mac[id] = mac;
	mac->id = id;
	mac->hw = eth;
	mac->of_node = np;

	FUNC8(mac->hwlro_ip, 0, sizeof(mac->hwlro_ip));
	mac->hwlro_ip_cnt = 0;

	mac->hw_stats = FUNC6(eth->dev,
				     sizeof(*mac->hw_stats),
				     GFP_KERNEL);
	if (!mac->hw_stats) {
		FUNC5(eth->dev, "failed to allocate counter memory\n");
		err = -ENOMEM;
		goto free_netdev;
	}
	FUNC14(&mac->hw_stats->stats_lock);
	FUNC15(&mac->hw_stats->syncp);
	mac->hw_stats->reg_offset = id * MTK_STAT_OFFSET;

	/* phylink create */
	phy_mode = FUNC11(np);
	if (phy_mode < 0) {
		FUNC5(eth->dev, "incorrect phy-mode\n");
		err = -EINVAL;
		goto free_netdev;
	}

	/* mac config is not set */
	mac->interface = PHY_INTERFACE_MODE_NA;
	mac->mode = MLO_AN_PHY;
	mac->speed = SPEED_UNKNOWN;

	mac->phylink_config.dev = &eth->netdev[id]->dev;
	mac->phylink_config.type = PHYLINK_NETDEV;

	phylink = FUNC13(&mac->phylink_config,
				 FUNC10(mac->of_node),
				 phy_mode, &mtk_phylink_ops);
	if (FUNC0(phylink)) {
		err = FUNC1(phylink);
		goto free_netdev;
	}

	mac->phylink = phylink;

	FUNC2(eth->netdev[id], eth->dev);
	eth->netdev[id]->watchdog_timeo = 5 * HZ;
	eth->netdev[id]->netdev_ops = &mtk_netdev_ops;
	eth->netdev[id]->base_addr = (unsigned long)eth->base;

	eth->netdev[id]->hw_features = eth->soc->hw_features;
	if (eth->hwlro)
		eth->netdev[id]->hw_features |= NETIF_F_LRO;

	eth->netdev[id]->vlan_features = eth->soc->hw_features &
		~(NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX);
	eth->netdev[id]->features |= eth->soc->hw_features;
	eth->netdev[id]->ethtool_ops = &mtk_ethtool_ops;

	eth->netdev[id]->irq = eth->irq[0];
	eth->netdev[id]->dev.of_node = np;

	return 0;

free_netdev:
	FUNC7(eth->netdev[id]);
	return err;
}