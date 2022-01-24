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
struct s2io_nic {int dummy; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_LRO ; 
 struct s2io_nic* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct s2io_nic*) ; 
 int FUNC3 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct s2io_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct s2io_nic*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, netdev_features_t features)
{
	struct s2io_nic *sp = FUNC0(dev);
	netdev_features_t changed = (features ^ dev->features) & NETIF_F_LRO;

	if (changed && FUNC1(dev)) {
		int rc;

		FUNC6(sp);
		FUNC2(sp);
		dev->features = features;
		rc = FUNC3(sp);
		if (rc)
			FUNC4(sp);
		else
			FUNC5(sp);

		return rc ? rc : 1;
	}

	return 0;
}