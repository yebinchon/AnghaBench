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
struct nfp_net {int /*<<< orphan*/  app; int /*<<< orphan*/  xdp_hw; int /*<<< orphan*/  xdp; } ;
struct netdev_bpf {int command; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
#define  XDP_QUERY_PROG 131 
#define  XDP_QUERY_PROG_HW 130 
#define  XDP_SETUP_PROG 129 
#define  XDP_SETUP_PROG_HW 128 
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct nfp_net*,struct netdev_bpf*) ; 
 int FUNC2 (struct nfp_net*,struct netdev_bpf*) ; 
 int FUNC3 (struct nfp_net*,struct netdev_bpf*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct netdev_bpf*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, struct netdev_bpf *xdp)
{
	struct nfp_net *nn = FUNC0(netdev);

	switch (xdp->command) {
	case XDP_SETUP_PROG:
		return FUNC2(nn, xdp);
	case XDP_SETUP_PROG_HW:
		return FUNC3(nn, xdp);
	case XDP_QUERY_PROG:
		return FUNC4(&nn->xdp, xdp);
	case XDP_QUERY_PROG_HW:
		return FUNC4(&nn->xdp_hw, xdp);
	default:
		return FUNC1(nn->app, nn, xdp);
	}
}