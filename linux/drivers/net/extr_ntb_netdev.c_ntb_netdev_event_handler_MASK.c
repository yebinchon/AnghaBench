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
struct ntb_netdev {int /*<<< orphan*/  qp; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int,scalar_t__) ; 
 struct ntb_netdev* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *data, int link_is_up)
{
	struct net_device *ndev = data;
	struct ntb_netdev *dev = FUNC1(ndev);

	FUNC0(ndev, "Event %x, Link %x\n", link_is_up,
		   FUNC4(dev->qp));

	if (link_is_up) {
		if (FUNC4(dev->qp))
			FUNC3(ndev);
	} else {
		FUNC2(ndev);
	}
}