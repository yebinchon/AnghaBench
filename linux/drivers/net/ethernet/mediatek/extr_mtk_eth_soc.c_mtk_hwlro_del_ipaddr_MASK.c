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
struct net_device {int dummy; } ;
struct mtk_mac {int id; int /*<<< orphan*/  hwlro_ip_cnt; scalar_t__* hwlro_ip; struct mtk_eth* hw; } ;
struct mtk_eth {int dummy; } ;
struct ethtool_rxnfc {int /*<<< orphan*/  fs; } ;
struct ethtool_rx_flow_spec {int location; } ;

/* Variables and functions */
 int EINVAL ; 
 int MTK_MAX_LRO_IP_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_eth*,int) ; 
 struct mtk_mac* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
				struct ethtool_rxnfc *cmd)
{
	struct ethtool_rx_flow_spec *fsp =
		(struct ethtool_rx_flow_spec *)&cmd->fs;
	struct mtk_mac *mac = FUNC2(dev);
	struct mtk_eth *eth = mac->hw;
	int hwlro_idx;

	if (fsp->location > 1)
		return -EINVAL;

	mac->hwlro_ip[fsp->location] = 0;
	hwlro_idx = (mac->id * MTK_MAX_LRO_IP_CNT) + fsp->location;

	mac->hwlro_ip_cnt = FUNC0(mac);

	FUNC1(eth, hwlro_idx);

	return 0;
}