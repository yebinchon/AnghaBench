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
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
#define  ETHTOOL_ID_ACTIVE 129 
#define  ETHTOOL_ID_INACTIVE 128 
 int /*<<< orphan*/  GS_CAN_IDENTIFY_OFF ; 
 int /*<<< orphan*/  GS_CAN_IDENTIFY_ON ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct net_device *dev,
			      enum ethtool_phys_id_state state)
{
	int rc = 0;

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		rc = FUNC0(dev, GS_CAN_IDENTIFY_ON);
		break;
	case ETHTOOL_ID_INACTIVE:
		rc = FUNC0(dev, GS_CAN_IDENTIFY_OFF);
		break;
	default:
		break;
	}

	return rc;
}