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
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/ * netdev_ops; } ;
struct net {int dummy; } ;
struct gtp_dev {int dummy; } ;

/* Variables and functions */
 size_t GTPA_LINK ; 
 size_t GTPA_NET_NS_FD ; 
 scalar_t__ FUNC0 (struct net*) ; 
 struct net_device* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct net*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gtp_netdev_ops ; 
 struct gtp_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct net*) ; 

__attribute__((used)) static struct gtp_dev *FUNC7(struct net *src_net, struct nlattr *nla[])
{
	struct gtp_dev *gtp = NULL;
	struct net_device *dev;
	struct net *net;

	/* Examine the link attributes and figure out which network namespace
	 * we are talking about.
	 */
	if (nla[GTPA_NET_NS_FD])
		net = FUNC3(FUNC5(nla[GTPA_NET_NS_FD]));
	else
		net = FUNC2(src_net);

	if (FUNC0(net))
		return NULL;

	/* Check if there's an existing gtpX device to configure */
	dev = FUNC1(net, FUNC5(nla[GTPA_LINK]));
	if (dev && dev->netdev_ops == &gtp_netdev_ops)
		gtp = FUNC4(dev);

	FUNC6(net);
	return gtp;
}