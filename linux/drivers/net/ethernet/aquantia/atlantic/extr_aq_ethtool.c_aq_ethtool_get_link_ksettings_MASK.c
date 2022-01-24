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
struct TYPE_2__ {unsigned int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct aq_nic_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aq_nic_s*,struct ethtool_link_ksettings*) ; 
 unsigned int FUNC1 (struct aq_nic_s*) ; 
 struct aq_nic_s* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev,
					 struct ethtool_link_ksettings *cmd)
{
	struct aq_nic_s *aq_nic = FUNC2(ndev);

	FUNC0(aq_nic, cmd);
	cmd->base.speed = FUNC3(ndev) ?
				FUNC1(aq_nic) : 0U;

	return 0;
}