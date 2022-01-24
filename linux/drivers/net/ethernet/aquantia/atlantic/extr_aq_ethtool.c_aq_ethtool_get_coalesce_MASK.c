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
struct ethtool_coalesce {int rx_max_coalesced_frames; int tx_max_coalesced_frames; int /*<<< orphan*/  tx_coalesce_usecs; int /*<<< orphan*/  rx_coalesce_usecs; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {scalar_t__ itr; int /*<<< orphan*/  tx_itr; int /*<<< orphan*/  rx_itr; } ;

/* Variables and functions */
 scalar_t__ AQ_CFG_INTERRUPT_MODERATION_AUTO ; 
 scalar_t__ AQ_CFG_INTERRUPT_MODERATION_ON ; 
 struct aq_nic_cfg_s* FUNC0 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev,
				   struct ethtool_coalesce *coal)
{
	struct aq_nic_s *aq_nic = FUNC1(ndev);
	struct aq_nic_cfg_s *cfg = FUNC0(aq_nic);

	if (cfg->itr == AQ_CFG_INTERRUPT_MODERATION_ON ||
	    cfg->itr == AQ_CFG_INTERRUPT_MODERATION_AUTO) {
		coal->rx_coalesce_usecs = cfg->rx_itr;
		coal->tx_coalesce_usecs = cfg->tx_itr;
		coal->rx_max_coalesced_frames = 0;
		coal->tx_max_coalesced_frames = 0;
	} else {
		coal->rx_coalesce_usecs = 0;
		coal->tx_coalesce_usecs = 0;
		coal->rx_max_coalesced_frames = 1;
		coal->tx_max_coalesced_frames = 1;
	}
	return 0;
}