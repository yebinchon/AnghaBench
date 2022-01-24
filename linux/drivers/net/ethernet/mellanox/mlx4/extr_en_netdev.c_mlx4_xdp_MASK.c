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
struct netdev_bpf {int command; int /*<<< orphan*/  prog_id; int /*<<< orphan*/  prog; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  XDP_QUERY_PROG 129 
#define  XDP_SETUP_PROG 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct netdev_bpf *xdp)
{
	switch (xdp->command) {
	case XDP_SETUP_PROG:
		return FUNC1(dev, xdp->prog);
	case XDP_QUERY_PROG:
		xdp->prog_id = FUNC0(dev);
		return 0;
	default:
		return -EINVAL;
	}
}