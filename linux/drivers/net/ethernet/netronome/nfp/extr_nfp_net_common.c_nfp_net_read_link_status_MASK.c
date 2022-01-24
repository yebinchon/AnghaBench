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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  netdev; } ;
struct nfp_net {int link_up; int /*<<< orphan*/  link_status_lock; TYPE_2__ dp; TYPE_1__* port; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_CFG_STS ; 
 int NFP_NET_CFG_STS_LINK ; 
 int /*<<< orphan*/  NFP_PORT_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct nfp_net *nn)
{
	unsigned long flags;
	bool link_up;
	u32 sts;

	FUNC5(&nn->link_status_lock, flags);

	sts = FUNC3(nn, NFP_NET_CFG_STS);
	link_up = !!(sts & NFP_NET_CFG_STS_LINK);

	if (nn->link_up == link_up)
		goto out;

	nn->link_up = link_up;
	if (nn->port)
		FUNC4(NFP_PORT_CHANGED, &nn->port->flags);

	if (nn->link_up) {
		FUNC2(nn->dp.netdev);
		FUNC0(nn->dp.netdev, "NIC Link is Up\n");
	} else {
		FUNC1(nn->dp.netdev);
		FUNC0(nn->dp.netdev, "NIC Link is Down\n");
	}
out:
	FUNC6(&nn->link_status_lock, flags);
}