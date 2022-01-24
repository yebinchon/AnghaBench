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
struct TYPE_4__ {scalar_t__ prog; } ;
struct TYPE_3__ {int ctrl; } ;
struct nfp_net {TYPE_2__ xdp_hw; TYPE_1__ dp; } ;
struct nfp_app {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int NFP_NET_CFG_CTRL_BPF ; 
 int FUNC0 (struct nfp_net*,struct bpf_prog*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*) ; 

__attribute__((used)) static int
FUNC2(struct nfp_app *app, struct nfp_net *nn,
		    struct bpf_prog *prog, struct netlink_ext_ack *extack)
{
	bool running, xdp_running;

	if (!FUNC1(nn))
		return -EINVAL;

	running = nn->dp.ctrl & NFP_NET_CFG_CTRL_BPF;
	xdp_running = running && nn->xdp_hw.prog;

	if (!prog && !xdp_running)
		return 0;
	if (prog && running && !xdp_running)
		return -EBUSY;

	return FUNC0(nn, prog, running, extack);
}