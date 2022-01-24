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
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int vecs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
#define  ETH_SS_STATS 128 
 int /*<<< orphan*/  aq_ethtool_queue_stat_names ; 
 int /*<<< orphan*/  aq_ethtool_stat_names ; 
 struct aq_nic_cfg_s* FUNC1 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, int stringset)
{
	int ret = 0;
	struct aq_nic_s *aq_nic = FUNC2(ndev);
	struct aq_nic_cfg_s *cfg = FUNC1(aq_nic);

	switch (stringset) {
	case ETH_SS_STATS:
		ret = FUNC0(aq_ethtool_stat_names) +
			cfg->vecs * FUNC0(aq_ethtool_queue_stat_names);
		break;
	default:
		ret = -EOPNOTSUPP;
	}
	return ret;
}