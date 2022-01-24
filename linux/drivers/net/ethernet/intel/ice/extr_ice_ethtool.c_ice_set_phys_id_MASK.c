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
struct ice_netdev_priv {TYPE_1__* vsi; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;
struct TYPE_2__ {int /*<<< orphan*/  port_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
#define  ETHTOOL_ID_ACTIVE 129 
#define  ETHTOOL_ID_INACTIVE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct ice_netdev_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *netdev, enum ethtool_phys_id_state state)
{
	struct ice_netdev_priv *np = FUNC1(netdev);
	bool led_active;

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		led_active = true;
		break;
	case ETHTOOL_ID_INACTIVE:
		led_active = false;
		break;
	default:
		return -EINVAL;
	}

	if (FUNC0(np->vsi->port_info, !led_active, NULL))
		return -EIO;

	return 0;
}