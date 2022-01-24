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
struct netdevsim {int /*<<< orphan*/  bpf_map_accept; int /*<<< orphan*/  xdp_hw; int /*<<< orphan*/  xdp; } ;
struct netdev_bpf {int command; int /*<<< orphan*/  offmap; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  BPF_OFFLOAD_MAP_ALLOC 133 
#define  BPF_OFFLOAD_MAP_FREE 132 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  XDP_QUERY_PROG 131 
#define  XDP_QUERY_PROG_HW 130 
#define  XDP_SETUP_PROG 129 
#define  XDP_SETUP_PROG_HW 128 
 struct netdevsim* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct netdevsim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct netdevsim*,struct netdev_bpf*) ; 
 int FUNC5 (struct netdevsim*,struct netdev_bpf*) ; 
 int FUNC6 (struct netdevsim*,struct netdev_bpf*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct netdev_bpf*) ; 

int FUNC8(struct net_device *dev, struct netdev_bpf *bpf)
{
	struct netdevsim *ns = FUNC1(dev);
	int err;

	FUNC0();

	switch (bpf->command) {
	case XDP_QUERY_PROG:
		return FUNC7(&ns->xdp, bpf);
	case XDP_QUERY_PROG_HW:
		return FUNC7(&ns->xdp_hw, bpf);
	case XDP_SETUP_PROG:
		err = FUNC4(ns, bpf);
		if (err)
			return err;

		return FUNC6(ns, bpf, &ns->xdp);
	case XDP_SETUP_PROG_HW:
		err = FUNC5(ns, bpf);
		if (err)
			return err;

		return FUNC6(ns, bpf, &ns->xdp_hw);
	case BPF_OFFLOAD_MAP_ALLOC:
		if (!ns->bpf_map_accept)
			return -EOPNOTSUPP;

		return FUNC2(ns, bpf->offmap);
	case BPF_OFFLOAD_MAP_FREE:
		FUNC3(bpf->offmap);
		return 0;
	default:
		return -EINVAL;
	}
}