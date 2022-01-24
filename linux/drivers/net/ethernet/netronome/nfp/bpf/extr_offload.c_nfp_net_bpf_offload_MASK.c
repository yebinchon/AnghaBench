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
typedef  int u8 ;
struct TYPE_2__ {int ctrl; int /*<<< orphan*/  netdev; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct netlink_ext_ack {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int NFP_NET_BPF_CAP_RELO ; 
 int /*<<< orphan*/  NFP_NET_CFG_BPF_CAP ; 
 int NFP_NET_CFG_CTRL_BPF ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfp_net*,struct bpf_prog*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_net*,struct netlink_ext_ack*) ; 
 int FUNC4 (struct nfp_net*) ; 
 int FUNC5 (struct nfp_net*,int /*<<< orphan*/ ) ; 

int FUNC6(struct nfp_net *nn, struct bpf_prog *prog,
			bool old_prog, struct netlink_ext_ack *extack)
{
	int err;

	if (prog && !FUNC1(prog, nn->dp.netdev))
		return -EINVAL;

	if (prog && old_prog) {
		u8 cap;

		cap = FUNC5(nn, NFP_NET_CFG_BPF_CAP);
		if (!(cap & NFP_NET_BPF_CAP_RELO)) {
			FUNC0(extack,
					   "FW does not support live reload");
			return -EBUSY;
		}
	}

	/* Something else is loaded, different program type? */
	if (!old_prog && nn->dp.ctrl & NFP_NET_CFG_CTRL_BPF)
		return -EBUSY;

	if (old_prog && !prog)
		return FUNC4(nn);

	err = FUNC2(nn, prog, extack);
	if (err)
		return err;

	if (!old_prog)
		FUNC3(nn, extack);

	return 0;
}