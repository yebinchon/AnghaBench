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
struct netsec_priv {int /*<<< orphan*/  xdp_prog; struct net_device* ndev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int mtu; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct bpf_prog* FUNC5 (int /*<<< orphan*/ *,struct bpf_prog*) ; 

__attribute__((used)) static int FUNC6(struct netsec_priv *priv, struct bpf_prog *prog,
			    struct netlink_ext_ack *extack)
{
	struct net_device *dev = priv->ndev;
	struct bpf_prog *old_prog;

	/* For now just support only the usual MTU sized frames */
	if (prog && dev->mtu > 1500) {
		FUNC0(extack, "Jumbo frames not supported on XDP");
		return -EOPNOTSUPP;
	}

	if (FUNC2(dev))
		FUNC4(dev);

	/* Detach old prog, if any */
	old_prog = FUNC5(&priv->xdp_prog, prog);
	if (old_prog)
		FUNC1(old_prog);

	if (FUNC2(dev))
		FUNC3(dev);

	return 0;
}