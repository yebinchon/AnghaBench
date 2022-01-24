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
struct net_device {int dummy; } ;
struct mii_ioctl_data {int reg_num; int /*<<< orphan*/  val_out; int /*<<< orphan*/  phy_id; } ;
struct TYPE_3__ {scalar_t__ media_type; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct igb_adapter {TYPE_2__ hw; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int EOPNOTSUPP ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 scalar_t__ e1000_media_type_copper ; 
 struct mii_ioctl_data* FUNC0 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 struct igb_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
	struct igb_adapter *adapter = FUNC2(netdev);
	struct mii_ioctl_data *data = FUNC0(ifr);

	if (adapter->hw.phy.media_type != e1000_media_type_copper)
		return -EOPNOTSUPP;

	switch (cmd) {
	case SIOCGMIIPHY:
		data->phy_id = adapter->hw.phy.addr;
		break;
	case SIOCGMIIREG:
		if (FUNC1(&adapter->hw, data->reg_num & 0x1F,
				     &data->val_out))
			return -EIO;
		break;
	case SIOCSMIIREG:
	default:
		return -EOPNOTSUPP;
	}
	return 0;
}