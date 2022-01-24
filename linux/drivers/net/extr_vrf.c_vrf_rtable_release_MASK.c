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
struct dst_entry {int /*<<< orphan*/  dev; } ;
struct rtable {struct dst_entry dst; } ;
struct net_vrf {int /*<<< orphan*/  rth; } ;
struct net_device {int dummy; } ;
struct net {int /*<<< orphan*/  loopback_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry*) ; 
 struct rtable* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, struct net_vrf *vrf)
{
	struct rtable *rth = FUNC5(vrf->rth);
	struct net *net = FUNC2(dev);
	struct dst_entry *dst;

	FUNC0(vrf->rth, NULL);
	FUNC6();

	/* move dev in dst's to loopback so this VRF device can be deleted
	 * - based on dst_ifdown
	 */
	if (rth) {
		dst = &rth->dst;
		FUNC3(dst->dev);
		dst->dev = net->loopback_dev;
		FUNC1(dst->dev);
		FUNC4(dst);
	}
}