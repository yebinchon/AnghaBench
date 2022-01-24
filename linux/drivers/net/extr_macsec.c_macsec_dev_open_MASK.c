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
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct macsec_dev {struct net_device* real_dev; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int FUNC0 (struct net_device*,int) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct macsec_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct macsec_dev *macsec = FUNC4(dev);
	struct net_device *real_dev = macsec->real_dev;
	int err;

	err = FUNC2(real_dev, dev->dev_addr);
	if (err < 0)
		return err;

	if (dev->flags & IFF_ALLMULTI) {
		err = FUNC0(real_dev, 1);
		if (err < 0)
			goto del_unicast;
	}

	if (dev->flags & IFF_PROMISC) {
		err = FUNC1(real_dev, 1);
		if (err < 0)
			goto clear_allmulti;
	}

	if (FUNC6(real_dev))
		FUNC7(dev);

	return 0;
clear_allmulti:
	if (dev->flags & IFF_ALLMULTI)
		FUNC0(real_dev, -1);
del_unicast:
	FUNC3(real_dev, dev->dev_addr);
	FUNC5(dev);
	return err;
}