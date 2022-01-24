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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int val_in; } ;
struct jme_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  old_cmd; int /*<<< orphan*/  phy_lock; int /*<<< orphan*/  mii_if; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int BMCR_ANENABLE ; 
 int BMCR_RESET ; 
 int BMCR_SPEED1000 ; 
 int EINVAL ; 
 int /*<<< orphan*/  JME_FLAG_SSET ; 
 int SIOCSMIIREG ; 
 int FUNC0 (int /*<<< orphan*/ *,struct mii_ioctl_data*,int,unsigned int*) ; 
 struct mii_ioctl_data* FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*) ; 
 struct jme_adapter* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct net_device *netdev, struct ifreq *rq, int cmd)
{
	int rc;
	struct jme_adapter *jme = FUNC4(netdev);
	struct mii_ioctl_data *mii_data = FUNC1(rq);
	unsigned int duplex_chg;

	if (cmd == SIOCSMIIREG) {
		u16 val = mii_data->val_in;
		if (!(val & (BMCR_RESET|BMCR_ANENABLE)) &&
		    (val & BMCR_SPEED1000))
			return -EINVAL;
	}

	FUNC6(&jme->phy_lock);
	rc = FUNC0(&jme->mii_if, mii_data, cmd, &duplex_chg);
	FUNC7(&jme->phy_lock);

	if (!rc && (cmd == SIOCSMIIREG)) {
		if (duplex_chg)
			FUNC3(jme);
		FUNC2(netdev, &jme->old_cmd);
		FUNC5(JME_FLAG_SSET, &jme->flags);
	}

	return rc;
}