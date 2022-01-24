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
struct net_device {int dummy; } ;
struct TYPE_4__ {int num_tqps; } ;
struct hnae3_handle {TYPE_2__ kinfo; TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int (* get_sset_count ) (struct hnae3_handle*,int) ;} ;
struct TYPE_3__ {struct hnae3_ae_ops* ops; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int HNS3_TQP_STATS_COUNT ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct hnae3_handle*,int) ; 
 int FUNC2 (struct hnae3_handle*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, int stringset)
{
	struct hnae3_handle *h = FUNC0(netdev);
	const struct hnae3_ae_ops *ops = h->ae_algo->ops;

	if (!ops->get_sset_count)
		return -EOPNOTSUPP;

	switch (stringset) {
	case ETH_SS_STATS:
		return ((HNS3_TQP_STATS_COUNT * h->kinfo.num_tqps) +
			ops->get_sset_count(h, stringset));

	case ETH_SS_TEST:
		return ops->get_sset_count(h, stringset);

	default:
		return -EOPNOTSUPP;
	}
}