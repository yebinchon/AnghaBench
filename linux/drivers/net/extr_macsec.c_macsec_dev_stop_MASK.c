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
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct net_device*) ; 
 struct macsec_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct macsec_dev *macsec = FUNC5(dev);
	struct net_device *real_dev = macsec->real_dev;

	FUNC6(dev);

	FUNC0(real_dev, dev);
	FUNC4(real_dev, dev);

	if (dev->flags & IFF_ALLMULTI)
		FUNC1(real_dev, -1);

	if (dev->flags & IFF_PROMISC)
		FUNC2(real_dev, -1);

	FUNC3(real_dev, dev->dev_addr);

	return 0;
}