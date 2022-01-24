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
struct nfp_net {int dummy; } ;
struct nfp_app {int /*<<< orphan*/  priv; } ;
struct netdev_bpf {int command; int /*<<< orphan*/  offmap; } ;

/* Variables and functions */
#define  BPF_OFFLOAD_MAP_ALLOC 129 
#define  BPF_OFFLOAD_MAP_FREE 128 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct nfp_app *app, struct nfp_net *nn, struct netdev_bpf *bpf)
{
	switch (bpf->command) {
	case BPF_OFFLOAD_MAP_ALLOC:
		return FUNC0(app->priv, bpf->offmap);
	case BPF_OFFLOAD_MAP_FREE:
		return FUNC1(app->priv, bpf->offmap);
	default:
		return -EINVAL;
	}
}