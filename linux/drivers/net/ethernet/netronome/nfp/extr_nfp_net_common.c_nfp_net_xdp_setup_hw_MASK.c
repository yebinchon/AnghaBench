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
struct nfp_net {int /*<<< orphan*/  xdp_hw; int /*<<< orphan*/  app; } ;
struct netdev_bpf {int /*<<< orphan*/  extack; int /*<<< orphan*/  prog; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct nfp_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct netdev_bpf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct netdev_bpf*) ; 

__attribute__((used)) static int FUNC3(struct nfp_net *nn, struct netdev_bpf *bpf)
{
	int err;

	if (!FUNC1(&nn->xdp_hw, bpf))
		return -EBUSY;

	err = FUNC0(nn->app, nn, bpf->prog, bpf->extack);
	if (err)
		return err;

	FUNC2(&nn->xdp_hw, bpf);
	return 0;
}