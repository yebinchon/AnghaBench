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
struct velocity_info {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  PCI_D3hot ; 
#define  SIOCGMIIPHY 130 
#define  SIOCGMIIREG 129 
#define  SIOCSMIIREG 128 
 struct velocity_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct ifreq*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct velocity_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct velocity_info *vptr = FUNC0(dev);
	int ret;

	/* If we are asked for information and the device is power
	   saving then we need to bring the device back up to talk to it */

	if (!FUNC1(dev))
		FUNC3(vptr, PCI_D0);

	switch (cmd) {
	case SIOCGMIIPHY:	/* Get address of MII PHY in use. */
	case SIOCGMIIREG:	/* Read MII PHY register. */
	case SIOCSMIIREG:	/* Write to MII PHY register. */
		ret = FUNC2(dev, rq, cmd);
		break;

	default:
		ret = -EOPNOTSUPP;
	}
	if (!FUNC1(dev))
		FUNC3(vptr, PCI_D3hot);


	return ret;
}