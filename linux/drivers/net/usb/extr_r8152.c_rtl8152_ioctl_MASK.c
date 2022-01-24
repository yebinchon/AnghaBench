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
struct r8152 {int /*<<< orphan*/  intf; int /*<<< orphan*/  control; int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int /*<<< orphan*/  val_in; int /*<<< orphan*/  reg_num; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  R8152_PHY_ID ; 
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct r8152* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct net_device *netdev, struct ifreq *rq, int cmd)
{
	struct r8152 *tp = FUNC4(netdev);
	struct mii_ioctl_data *data = FUNC1(rq);
	int res;

	if (FUNC7(RTL8152_UNPLUG, &tp->flags))
		return -ENODEV;

	res = FUNC8(tp->intf);
	if (res < 0)
		goto out;

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = R8152_PHY_ID; /* Internal PHY */
		break;

	case SIOCGMIIREG:
		FUNC2(&tp->control);
		data->val_out = FUNC5(tp, data->reg_num);
		FUNC3(&tp->control);
		break;

	case SIOCSMIIREG:
		if (!FUNC0(CAP_NET_ADMIN)) {
			res = -EPERM;
			break;
		}
		FUNC2(&tp->control);
		FUNC6(tp, data->reg_num, data->val_in);
		FUNC3(&tp->control);
		break;

	default:
		res = -EOPNOTSUPP;
	}

	FUNC9(tp->intf);

out:
	return res;
}