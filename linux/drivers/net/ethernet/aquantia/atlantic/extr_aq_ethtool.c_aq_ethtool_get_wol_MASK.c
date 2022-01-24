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
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; int /*<<< orphan*/  supported; } ;
struct aq_nic_s {int dummy; } ;
struct aq_nic_cfg_s {scalar_t__ wol; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAKE_MAGIC ; 
 struct aq_nic_cfg_s* FUNC0 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev,
			       struct ethtool_wolinfo *wol)
{
	struct aq_nic_s *aq_nic = FUNC1(ndev);
	struct aq_nic_cfg_s *cfg = FUNC0(aq_nic);

	wol->supported = WAKE_MAGIC;
	wol->wolopts = 0;

	if (cfg->wol)
		wol->wolopts |= WAKE_MAGIC;
}