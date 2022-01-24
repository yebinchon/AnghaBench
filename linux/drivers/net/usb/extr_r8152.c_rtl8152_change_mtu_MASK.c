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
typedef  scalar_t__ u32 ;
struct r8152 {int version; int /*<<< orphan*/  intf; int /*<<< orphan*/  control; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_RMS ; 
#define  RTL_VER_01 130 
#define  RTL_VER_02 129 
#define  RTL_VER_07 128 
 scalar_t__ VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, int new_mtu)
{
	struct r8152 *tp = FUNC2(dev);
	int ret;

	switch (tp->version) {
	case RTL_VER_01:
	case RTL_VER_02:
	case RTL_VER_07:
		dev->mtu = new_mtu;
		return 0;
	default:
		break;
	}

	ret = FUNC7(tp->intf);
	if (ret < 0)
		return ret;

	FUNC0(&tp->control);

	dev->mtu = new_mtu;

	if (FUNC4(dev)) {
		u32 rms = new_mtu + VLAN_ETH_HLEN + ETH_FCS_LEN;

		FUNC5(tp, MCU_TYPE_PLA, PLA_RMS, rms);

		if (FUNC3(dev))
			FUNC6(tp);
	}

	FUNC1(&tp->control);

	FUNC8(tp->intf);

	return ret;
}