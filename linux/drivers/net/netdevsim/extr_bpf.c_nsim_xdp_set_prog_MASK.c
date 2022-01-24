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
struct xdp_attachment_info {int dummy; } ;
struct netdevsim {int /*<<< orphan*/  bpf_xdpoffload_accept; int /*<<< orphan*/  bpf_xdpdrv_accept; } ;
struct netdev_bpf {scalar_t__ command; int /*<<< orphan*/  extack; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ XDP_SETUP_PROG ; 
 scalar_t__ XDP_SETUP_PROG_HW ; 
 int FUNC1 (struct netdevsim*,struct netdev_bpf*) ; 
 int /*<<< orphan*/  FUNC2 (struct xdp_attachment_info*,struct netdev_bpf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xdp_attachment_info*,struct netdev_bpf*) ; 

__attribute__((used)) static int
FUNC4(struct netdevsim *ns, struct netdev_bpf *bpf,
		  struct xdp_attachment_info *xdp)
{
	int err;

	if (!FUNC2(xdp, bpf))
		return -EBUSY;

	if (bpf->command == XDP_SETUP_PROG && !ns->bpf_xdpdrv_accept) {
		FUNC0(bpf->extack, "driver XDP disabled in DebugFS");
		return -EOPNOTSUPP;
	}
	if (bpf->command == XDP_SETUP_PROG_HW && !ns->bpf_xdpoffload_accept) {
		FUNC0(bpf->extack, "XDP offload disabled in DebugFS");
		return -EOPNOTSUPP;
	}

	if (bpf->command == XDP_SETUP_PROG_HW) {
		err = FUNC1(ns, bpf);
		if (err)
			return err;
	}

	FUNC3(xdp, bpf);

	return 0;
}