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
struct net_device {int dummy; } ;
struct hnae3_knic_private_info {unsigned int rss_size; unsigned int num_tc; TYPE_1__* tc_info; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  tqp_offset; int /*<<< orphan*/  tqp_count; int /*<<< orphan*/  tc; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int HNAE3_MAX_TC ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,unsigned int) ; 
 int FUNC6 (struct net_device*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct hnae3_handle *h = FUNC0(netdev);
	struct hnae3_knic_private_info *kinfo = &h->kinfo;
	unsigned int queue_size = kinfo->rss_size * kinfo->num_tc;
	int i, ret;

	if (kinfo->num_tc <= 1) {
		FUNC2(netdev);
	} else {
		ret = FUNC3(netdev, kinfo->num_tc);
		if (ret) {
			FUNC1(netdev,
				   "netdev_set_num_tc fail, ret=%d!\n", ret);
			return ret;
		}

		for (i = 0; i < HNAE3_MAX_TC; i++) {
			if (!kinfo->tc_info[i].enable)
				continue;

			FUNC4(netdev,
					    kinfo->tc_info[i].tc,
					    kinfo->tc_info[i].tqp_count,
					    kinfo->tc_info[i].tqp_offset);
		}
	}

	ret = FUNC6(netdev, queue_size);
	if (ret) {
		FUNC1(netdev,
			   "netif_set_real_num_tx_queues fail, ret=%d!\n", ret);
		return ret;
	}

	ret = FUNC5(netdev, queue_size);
	if (ret) {
		FUNC1(netdev,
			   "netif_set_real_num_rx_queues fail, ret=%d!\n", ret);
		return ret;
	}

	return 0;
}