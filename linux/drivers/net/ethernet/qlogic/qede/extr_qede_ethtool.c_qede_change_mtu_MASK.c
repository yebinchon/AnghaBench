#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int mtu; } ;
struct qede_reload_args {int /*<<< orphan*/ * func; TYPE_3__ u; } ;
struct qede_dev {int /*<<< orphan*/  cdev; TYPE_2__* ops; } ;
struct net_device {int /*<<< orphan*/  features; } ;
struct TYPE_5__ {TYPE_1__* common; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_mtu ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,int,char*,int) ; 
 int /*<<< orphan*/  NETIF_F_GRO_HW ; 
 int NETIF_MSG_IFDOWN ; 
 int NETIF_MSG_IFUP ; 
 int PAGE_SIZE ; 
 struct qede_dev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*,struct qede_reload_args*,int) ; 
 int /*<<< orphan*/  qede_update_mtu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct net_device *ndev, int new_mtu)
{
	struct qede_dev *edev = FUNC1(ndev);
	struct qede_reload_args args;

	FUNC0(edev, (NETIF_MSG_IFUP | NETIF_MSG_IFDOWN),
		   "Configuring MTU size of %d\n", new_mtu);

	if (new_mtu > PAGE_SIZE)
		ndev->features &= ~NETIF_F_GRO_HW;

	/* Set the mtu field and re-start the interface if needed */
	args.u.mtu = new_mtu;
	args.func = &qede_update_mtu;
	FUNC2(edev, &args, false);

	edev->ops->common->update_mtu(edev->cdev, new_mtu);

	return 0;
}