#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct bpf_prog* xdp_prog; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; TYPE_2__ channels; } ;
struct bpf_prog {TYPE_3__* aux; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *dev)
{
	struct mlx5e_priv *priv = FUNC2(dev);
	const struct bpf_prog *xdp_prog;
	u32 prog_id = 0;

	FUNC0(&priv->state_lock);
	xdp_prog = priv->channels.params.xdp_prog;
	if (xdp_prog)
		prog_id = xdp_prog->aux->id;
	FUNC1(&priv->state_lock);

	return prog_id;
}