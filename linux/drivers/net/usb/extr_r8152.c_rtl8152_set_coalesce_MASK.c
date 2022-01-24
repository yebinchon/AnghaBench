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
struct TYPE_2__ {int /*<<< orphan*/  (* enable ) (struct r8152*) ;int /*<<< orphan*/  (* disable ) (struct r8152*) ;} ;
struct r8152 {int version; scalar_t__ coalesce; int /*<<< orphan*/  intf; int /*<<< orphan*/  control; int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; TYPE_1__ rtl_ops; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; } ;

/* Variables and functions */
 scalar_t__ COALESCE_SLOW ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  RTL8152_SET_RX_MODE ; 
#define  RTL_VER_01 130 
#define  RTL_VER_02 129 
#define  RTL_VER_07 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC12 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC13 (struct r8152*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct net_device *netdev,
				struct ethtool_coalesce *coalesce)
{
	struct r8152 *tp = FUNC6(netdev);
	int ret;

	switch (tp->version) {
	case RTL_VER_01:
	case RTL_VER_02:
	case RTL_VER_07:
		return -EOPNOTSUPP;
	default:
		break;
	}

	if (coalesce->rx_coalesce_usecs > COALESCE_SLOW)
		return -EINVAL;

	ret = FUNC14(tp->intf);
	if (ret < 0)
		return ret;

	FUNC2(&tp->control);

	if (tp->coalesce != coalesce->rx_coalesce_usecs) {
		tp->coalesce = coalesce->rx_coalesce_usecs;

		if (FUNC8(netdev) && FUNC7(netdev)) {
			FUNC9(netdev);
			FUNC4(&tp->napi);
			tp->rtl_ops.disable(tp);
			tp->rtl_ops.enable(tp);
			FUNC11(tp);
			FUNC1(RTL8152_SET_RX_MODE, &tp->flags);
			FUNC0(netdev);
			FUNC5(&tp->napi);
			FUNC10(netdev);
		}
	}

	FUNC3(&tp->control);

	FUNC15(tp->intf);

	return ret;
}