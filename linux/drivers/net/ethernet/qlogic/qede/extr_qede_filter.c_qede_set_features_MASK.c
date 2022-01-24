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
struct TYPE_2__ {int features; } ;
struct qede_reload_args {int /*<<< orphan*/  (* func ) (struct qede_dev*,struct qede_reload_args*) ;TYPE_1__ u; } ;
struct qede_dev {scalar_t__ xdp_prog; } ;
struct net_device {int features; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_GRO_HW ; 
 int /*<<< orphan*/  FUNC0 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 struct qede_dev* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*,struct qede_reload_args*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qede_dev*,struct qede_reload_args*) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_dev*,struct qede_reload_args*) ; 

int FUNC6(struct net_device *dev, netdev_features_t features)
{
	struct qede_dev *edev = FUNC2(dev);
	netdev_features_t changes = features ^ dev->features;
	bool need_reload = false;

	if (changes & NETIF_F_GRO_HW)
		need_reload = true;

	if (need_reload) {
		struct qede_reload_args args;

		args.u.features = features;
		args.func = &qede_set_features_reload;

		/* Make sure that we definitely need to reload.
		 * In case of an eBPF attached program, there will be no FW
		 * aggregations, so no need to actually reload.
		 */
		FUNC0(edev);
		if (edev->xdp_prog)
			args.func(edev, &args);
		else
			FUNC3(edev, &args, true);
		FUNC1(edev);

		return 1;
	}

	return 0;
}