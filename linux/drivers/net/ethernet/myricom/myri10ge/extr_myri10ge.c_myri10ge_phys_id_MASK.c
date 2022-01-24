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
struct myri10ge_priv {int dummy; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_ID_ACTIVE 129 
#define  ETHTOOL_ID_INACTIVE 128 
 int FUNC0 (struct myri10ge_priv*,int) ; 
 struct myri10ge_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *netdev, enum ethtool_phys_id_state state)
{
	struct myri10ge_priv *mgp = FUNC1(netdev);
	int rc;

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		rc = FUNC0(mgp, 1);
		break;

	case ETHTOOL_ID_INACTIVE:
		rc =  FUNC0(mgp, 0);
		break;

	default:
		rc = -EINVAL;
	}

	return rc;
}