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
struct net_device_ops {int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,int) ;} ;
struct net_device {int /*<<< orphan*/  name; struct net_device_ops* netdev_ops; } ;
struct ifreq {int /*<<< orphan*/  ifr_ifru; int /*<<< orphan*/  ifr_name; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
#define  SIOCGHWTSTAMP 129 
#define  SIOCSHWTSTAMP 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,struct ifreq*,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct net_device *real_dev = FUNC1(dev);
	const struct net_device_ops *ops = real_dev->netdev_ops;
	struct ifreq ifrr;
	int err = -EOPNOTSUPP;

	FUNC4(ifrr.ifr_name, real_dev->name, IFNAMSIZ);
	ifrr.ifr_ifru = ifr->ifr_ifru;

	switch (cmd) {
	case SIOCSHWTSTAMP:
		if (!FUNC2(FUNC0(dev), &init_net))
			break;
		/* fall through */
	case SIOCGHWTSTAMP:
		if (FUNC3(real_dev) && ops->ndo_do_ioctl)
			err = ops->ndo_do_ioctl(real_dev, &ifrr, cmd);
		break;
	}

	if (!err)
		ifr->ifr_ifru = ifrr.ifr_ifru;

	return err;
}