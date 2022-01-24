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
struct qede_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
#define  SIOCSHWTSTAMP 128 
 struct qede_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct qede_dev*,struct ifreq*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *ifr, int cmd)
{
	struct qede_dev *edev = FUNC1(dev);

	if (!FUNC2(dev))
		return -EAGAIN;

	switch (cmd) {
	case SIOCSHWTSTAMP:
		return FUNC3(edev, ifr);
	default:
		FUNC0(edev, QED_MSG_DEBUG,
			   "default IOCTL cmd 0x%x\n", cmd);
		return -EOPNOTSUPP;
	}

	return 0;
}