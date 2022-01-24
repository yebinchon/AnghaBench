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
struct netdev_bpf {int command; int /*<<< orphan*/  prog_id; int /*<<< orphan*/  prog; } ;
struct net_device {int dummy; } ;
struct bnxt {TYPE_2__* xdp_prog; } ;
struct TYPE_4__ {TYPE_1__* aux; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  XDP_QUERY_PROG 129 
#define  XDP_SETUP_PROG 128 
 int FUNC0 (struct bnxt*,int /*<<< orphan*/ ) ; 
 struct bnxt* FUNC1 (struct net_device*) ; 

int FUNC2(struct net_device *dev, struct netdev_bpf *xdp)
{
	struct bnxt *bp = FUNC1(dev);
	int rc;

	switch (xdp->command) {
	case XDP_SETUP_PROG:
		rc = FUNC0(bp, xdp->prog);
		break;
	case XDP_QUERY_PROG:
		xdp->prog_id = bp->xdp_prog ? bp->xdp_prog->aux->id : 0;
		rc = 0;
		break;
	default:
		rc = -EINVAL;
		break;
	}
	return rc;
}