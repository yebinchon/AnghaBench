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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct usbnet {struct net_device* net; } ;
struct net_device {int dummy; } ;
struct nd_msg {int /*<<< orphan*/  target; } ;
struct ipv6hdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  forwarding; } ;
struct inet6_dev {TYPE_1__ cnf; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ndisc_send_na ) (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int IPV6_ADDR_UNICAST ; 
 struct net_device* FUNC0 (struct net_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct inet6_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct inet6_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* ipv6_stub ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int) ; 

__attribute__((used)) static void FUNC11(struct usbnet *dev, u8 *buf, u16 tci)
{
	struct ipv6hdr *iph = (void *)buf;
	struct nd_msg *msg = (void *)(iph + 1);
	struct net_device *netdev;
	struct inet6_dev *in6_dev;
	bool is_router;

	/* we'll only respond to requests from unicast addresses to
	 * our solicited node addresses.
	 */
	if (!FUNC6(&iph->daddr) ||
	    !(FUNC7(&iph->saddr) & IPV6_ADDR_UNICAST))
		return;

	/* need to send the NA on the VLAN dev, if any */
	FUNC8();
	if (tci) {
		netdev = FUNC0(dev->net, FUNC3(ETH_P_8021Q),
						  tci);
		if (!netdev) {
			FUNC9();
			return;
		}
	} else {
		netdev = dev->net;
	}
	FUNC1(netdev);
	FUNC9();

	in6_dev = FUNC4(netdev);
	if (!in6_dev)
		goto out;
	is_router = !!in6_dev->cnf.forwarding;
	FUNC5(in6_dev);

	/* ipv6_stub != NULL if in6_dev_get returned an inet6_dev */
	ipv6_stub->ndisc_send_na(netdev, &iph->saddr, &msg->target,
				 is_router /* router */,
				 true /* solicited */,
				 false /* override */,
				 true /* inc_opt */);
out:
	FUNC2(netdev);
}