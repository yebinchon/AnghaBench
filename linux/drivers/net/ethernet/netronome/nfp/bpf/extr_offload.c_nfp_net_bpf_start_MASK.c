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
struct TYPE_2__ {int /*<<< orphan*/  ctrl; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_CFG_CTRL ; 
 int /*<<< orphan*/  NFP_NET_CFG_CTRL_BPF ; 
 int /*<<< orphan*/  NFP_NET_CFG_UPDATE_GEN ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nfp_net *nn, struct netlink_ext_ack *extack)
{
	int err;

	/* Enable passing packets through BPF function */
	nn->dp.ctrl |= NFP_NET_CFG_CTRL_BPF;
	FUNC2(nn, NFP_NET_CFG_CTRL, nn->dp.ctrl);
	err = FUNC1(nn, NFP_NET_CFG_UPDATE_GEN);
	if (err)
		FUNC0(extack,
				   "FW command error while enabling BPF");
}