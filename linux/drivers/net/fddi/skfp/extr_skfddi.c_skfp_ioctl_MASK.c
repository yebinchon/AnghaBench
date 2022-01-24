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
struct TYPE_2__ {int /*<<< orphan*/  MacStat; } ;
struct s_smc {TYPE_1__ os; } ;
struct s_skfp_ioctl {int cmd; int len; int /*<<< orphan*/  data; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ifreq {int /*<<< orphan*/  ifr_data; } ;
typedef  TYPE_1__ skfddi_priv ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 int EFAULT ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
#define  SKFP_CLR_STATS 129 
#define  SKFP_GET_STATS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct s_skfp_ioctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct s_smc* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct s_smc *smc = FUNC4(dev);
	skfddi_priv *lp = &smc->os;
	struct s_skfp_ioctl ioc;
	int status = 0;

	if (FUNC1(&ioc, rq->ifr_data, sizeof(struct s_skfp_ioctl)))
		return -EFAULT;

	switch (ioc.cmd) {
	case SKFP_GET_STATS:	/* Get the driver statistics */
		ioc.len = sizeof(lp->MacStat);
		status = FUNC2(ioc.data, FUNC6(dev), ioc.len)
				? -EFAULT : 0;
		break;
	case SKFP_CLR_STATS:	/* Zero out the driver statistics */
		if (!FUNC0(CAP_NET_ADMIN)) {
			status = -EPERM;
		} else {
			FUNC3(&lp->MacStat, 0, sizeof(lp->MacStat));
		}
		break;
	default:
		FUNC5("ioctl for %s: unknown cmd: %04x\n", dev->name, ioc.cmd);
		status = -EOPNOTSUPP;

	}			// switch

	return status;
}