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
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct hnae3_knic_private_info {int rss_size; int num_tqps; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct ethtool_channels {int combined_count; scalar_t__ tx_count; scalar_t__ rx_count; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  HNAE3_DOWN_CLIENT ; 
 int /*<<< orphan*/  HNAE3_UNINIT_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  drv ; 
 int FUNC1 (struct hnae3_handle*,int,int) ; 
 struct hnae3_handle* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct hnae3_handle*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int FUNC5 (struct hnae3_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct hnae3_handle*,int /*<<< orphan*/ ,struct net_device*,char*,int,int) ; 
 int FUNC9 (struct net_device*) ; 

int FUNC10(struct net_device *netdev,
		      struct ethtool_channels *ch)
{
	struct hnae3_handle *h = FUNC2(netdev);
	struct hnae3_knic_private_info *kinfo = &h->kinfo;
	bool rxfh_configured = FUNC9(netdev);
	u32 new_tqp_num = ch->combined_count;
	u16 org_tqp_num;
	int ret;

	if (FUNC4(netdev))
		return -EBUSY;

	if (ch->rx_count || ch->tx_count)
		return -EINVAL;

	if (new_tqp_num > FUNC3(h) ||
	    new_tqp_num < 1) {
		FUNC0(&netdev->dev,
			"Change tqps fail, the tqp range is from 1 to %d",
			FUNC3(h));
		return -EINVAL;
	}

	if (kinfo->rss_size == new_tqp_num)
		return 0;

	FUNC8(h, drv, netdev,
		  "set channels: tqp_num=%u, rxfh=%d\n",
		  new_tqp_num, rxfh_configured);

	ret = FUNC5(h, HNAE3_DOWN_CLIENT);
	if (ret)
		return ret;

	ret = FUNC5(h, HNAE3_UNINIT_CLIENT);
	if (ret)
		return ret;

	org_tqp_num = h->kinfo.num_tqps;
	ret = FUNC1(h, new_tqp_num, rxfh_configured);
	if (ret) {
		int ret1;

		FUNC7(netdev,
			    "Change channels fail, revert to old value\n");
		ret1 = FUNC1(h, org_tqp_num, rxfh_configured);
		if (ret1) {
			FUNC6(netdev,
				   "revert to old channel fail\n");
			return ret1;
		}

		return ret;
	}

	return 0;
}