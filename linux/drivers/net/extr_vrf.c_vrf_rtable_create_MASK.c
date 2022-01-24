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
struct TYPE_2__ {int /*<<< orphan*/  output; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_vrf {int /*<<< orphan*/  rth; int /*<<< orphan*/  tb_id; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RTN_UNICAST ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net_vrf* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rtable*) ; 
 struct rtable* FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vrf_output ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct net_vrf *vrf = FUNC2(dev);
	struct rtable *rth;

	if (!FUNC1(FUNC0(dev), vrf->tb_id))
		return -ENOMEM;

	/* create a dst for routing packets out through a VRF device */
	rth = FUNC4(dev, 0, RTN_UNICAST, 1, 1, 0);
	if (!rth)
		return -ENOMEM;

	rth->dst.output	= vrf_output;

	FUNC3(vrf->rth, rth);

	return 0;
}