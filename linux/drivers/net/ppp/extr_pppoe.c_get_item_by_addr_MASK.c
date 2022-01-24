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
struct TYPE_3__ {int /*<<< orphan*/  remote; int /*<<< orphan*/  sid; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__ pppoe; } ;
struct sockaddr_pppox {TYPE_2__ sa_addr; } ;
struct pppox_sock {int dummy; } ;
struct pppoe_net {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 struct pppox_sock* FUNC1 (struct pppoe_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pppoe_net* FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline struct pppox_sock *FUNC5(struct net *net,
						struct sockaddr_pppox *sp)
{
	struct net_device *dev;
	struct pppoe_net *pn;
	struct pppox_sock *pppox_sock = NULL;

	int ifindex;

	FUNC3();
	dev = FUNC0(net, sp->sa_addr.pppoe.dev);
	if (dev) {
		ifindex = dev->ifindex;
		pn = FUNC2(net);
		pppox_sock = FUNC1(pn, sp->sa_addr.pppoe.sid,
				sp->sa_addr.pppoe.remote, ifindex);
	}
	FUNC4();
	return pppox_sock;
}