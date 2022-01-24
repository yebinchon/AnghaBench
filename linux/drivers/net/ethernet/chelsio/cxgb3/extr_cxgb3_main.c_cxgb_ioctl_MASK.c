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
struct TYPE_2__ {int /*<<< orphan*/  mdio; } ;
struct port_info {TYPE_1__ phy; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int phy_id; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  SIOCCHIOCTL 131 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct port_info* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *req, int cmd)
{
	struct mii_ioctl_data *data = FUNC1(req);
	struct port_info *pi = FUNC6(dev);
	struct adapter *adapter = pi->adapter;

	switch (cmd) {
	case SIOCGMIIREG:
	case SIOCSMIIREG:
		/* Convert phy_id from older PRTAD/DEVAD format */
		if (FUNC2(adapter) &&
		    !FUNC5(data->phy_id) &&
		    (data->phy_id & 0x1f00) &&
		    !(data->phy_id & 0xe0e0))
			data->phy_id = FUNC4(data->phy_id >> 8,
						       data->phy_id & 0x1f);
		/* FALLTHRU */
	case SIOCGMIIPHY:
		return FUNC3(&pi->phy.mdio, data, cmd);
	case SIOCCHIOCTL:
		return FUNC0(dev, req->ifr_data);
	default:
		return -EOPNOTSUPP;
	}
}