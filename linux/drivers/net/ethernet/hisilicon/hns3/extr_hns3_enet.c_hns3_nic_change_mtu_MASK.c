#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int mtu; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct TYPE_4__ {int (* set_mtu ) (struct hnae3_handle*,int) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  drv ; 
 struct hnae3_handle* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hnae3_handle*,int /*<<< orphan*/ ,struct net_device*,char*,int,int) ; 
 int FUNC4 (struct hnae3_handle*,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int new_mtu)
{
	struct hnae3_handle *h = FUNC0(netdev);
	int ret;

	if (FUNC1(netdev))
		return -EBUSY;

	if (!h->ae_algo->ops->set_mtu)
		return -EOPNOTSUPP;

	FUNC3(h, drv, netdev,
		  "change mtu from %u to %d\n", netdev->mtu, new_mtu);

	ret = h->ae_algo->ops->set_mtu(h, new_mtu);
	if (ret)
		FUNC2(netdev, "failed to change MTU in hardware %d\n",
			   ret);
	else
		netdev->mtu = new_mtu;

	return ret;
}