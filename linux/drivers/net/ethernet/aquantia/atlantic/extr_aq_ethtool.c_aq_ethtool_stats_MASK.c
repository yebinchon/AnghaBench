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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {int vecs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aq_ethtool_queue_stat_names ; 
 int /*<<< orphan*/  aq_ethtool_stat_names ; 
 struct aq_nic_cfg_s* FUNC1 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_nic_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct aq_nic_s* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev,
			     struct ethtool_stats *stats, u64 *data)
{
	struct aq_nic_s *aq_nic = FUNC4(ndev);
	struct aq_nic_cfg_s *cfg = FUNC1(aq_nic);

	FUNC3(data, 0, (FUNC0(aq_ethtool_stat_names) +
			 FUNC0(aq_ethtool_queue_stat_names) *
			 cfg->vecs) * sizeof(u64));
	FUNC2(aq_nic, data);
}