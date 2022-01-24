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
typedef  int u32 ;
struct pch_gbe_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  speed; } ;
struct TYPE_3__ {int /*<<< orphan*/  advertising; int /*<<< orphan*/  supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Half ; 
 int ADVERTISED_TP ; 
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int SUPPORTED_1000baseT_Half ; 
 int SUPPORTED_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ethtool_link_ksettings*) ; 
 struct pch_gbe_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev,
				      struct ethtool_link_ksettings *ecmd)
{
	struct pch_gbe_adapter *adapter = FUNC3(netdev);
	u32 supported, advertising;

	FUNC2(&adapter->mii, ecmd);

	FUNC1(&supported,
						ecmd->link_modes.supported);
	FUNC1(&advertising,
						ecmd->link_modes.advertising);

	supported &= ~(SUPPORTED_TP | SUPPORTED_1000baseT_Half);
	advertising &= ~(ADVERTISED_TP | ADVERTISED_1000baseT_Half);

	FUNC0(ecmd->link_modes.supported,
						supported);
	FUNC0(ecmd->link_modes.advertising,
						advertising);

	if (!FUNC4(adapter->netdev))
		ecmd->base.speed = SPEED_UNKNOWN;

	return 0;
}