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
typedef  int /*<<< orphan*/  u16 ;
struct xdp_umem {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct TYPE_2__ {struct mlx5e_params params; } ;
struct mlx5e_priv {TYPE_1__ channels; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLX5E_RQ_GROUP_XSK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5e_priv*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5e_priv*,struct xdp_umem*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct net_device *dev, struct xdp_umem *umem, u16 qid)
{
	struct mlx5e_priv *priv = FUNC3(dev);
	struct mlx5e_params *params = &priv->channels.params;
	u16 ix;

	if (FUNC4(!FUNC0(params, qid, MLX5E_RQ_GROUP_XSK, &ix)))
		return -EINVAL;

	return umem ? FUNC2(priv, umem, ix) :
		      FUNC1(priv, ix);
}