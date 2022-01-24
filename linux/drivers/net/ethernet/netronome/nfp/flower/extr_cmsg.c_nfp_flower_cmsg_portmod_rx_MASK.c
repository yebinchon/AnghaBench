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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nfp_flower_cmsg_portmod {int info; int /*<<< orphan*/  mtu; int /*<<< orphan*/  portnum; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NFP_FLOWER_CMSG_PORTMOD_INFO_LINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct nfp_app*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nfp_flower_cmsg_portmod* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_app*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void
FUNC12(struct nfp_app *app, struct sk_buff *skb)
{
	struct nfp_flower_cmsg_portmod *msg;
	struct net_device *netdev;
	bool link;

	msg = FUNC6(skb);
	link = msg->info & NFP_FLOWER_CMSG_PORTMOD_INFO_LINK;

	FUNC10();
	FUNC8();
	netdev = FUNC5(app, FUNC1(msg->portnum), NULL);
	FUNC9();
	if (!netdev) {
		FUNC7(app, "ctrl msg for unknown port 0x%08x\n",
				     FUNC1(msg->portnum));
		FUNC11();
		return;
	}

	if (link) {
		u16 mtu = FUNC0(msg->mtu);

		FUNC4(netdev);

		/* An MTU of 0 from the firmware should be ignored */
		if (mtu)
			FUNC2(netdev, mtu);
	} else {
		FUNC3(netdev);
	}
	FUNC11();
}