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
typedef  int /*<<< orphan*/  u32 ;
struct virtnet_info {int max_queue_pairs; TYPE_1__* rq; } ;
struct net_device {int dummy; } ;
struct bpf_prog {TYPE_2__* aux; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  xdp_prog; } ;

/* Variables and functions */
 struct virtnet_info* FUNC0 (struct net_device*) ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct net_device *dev)
{
	struct virtnet_info *vi = FUNC0(dev);
	const struct bpf_prog *xdp_prog;
	int i;

	for (i = 0; i < vi->max_queue_pairs; i++) {
		xdp_prog = FUNC1(vi->rq[i].xdp_prog);
		if (xdp_prog)
			return xdp_prog->aux->id;
	}
	return 0;
}