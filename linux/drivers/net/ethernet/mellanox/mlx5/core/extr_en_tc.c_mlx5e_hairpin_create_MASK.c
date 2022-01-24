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
struct mlx5e_priv {int /*<<< orphan*/  netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5e_hairpin {int num_channels; struct mlx5_hairpin* pair; struct mlx5e_priv* func_priv; struct mlx5_core_dev* func_mdev; } ;
struct mlx5_hairpin_params {int num_channels; } ;
struct mlx5_hairpin {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5e_hairpin* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlx5_hairpin*) ; 
 int FUNC2 (struct mlx5_hairpin*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_hairpin*) ; 
 struct mlx5e_hairpin* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct mlx5_hairpin* FUNC6 (struct mlx5_core_dev*,struct mlx5_core_dev*,struct mlx5_hairpin_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_hairpin*) ; 
 int FUNC8 (struct mlx5e_hairpin*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5e_hairpin*) ; 
 struct mlx5_core_dev* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct mlx5e_hairpin*) ; 

__attribute__((used)) static struct mlx5e_hairpin *
FUNC12(struct mlx5e_priv *priv, struct mlx5_hairpin_params *params,
		     int peer_ifindex)
{
	struct mlx5_core_dev *func_mdev, *peer_mdev;
	struct mlx5e_hairpin *hp;
	struct mlx5_hairpin *pair;
	int err;

	hp = FUNC5(sizeof(*hp), GFP_KERNEL);
	if (!hp)
		return FUNC0(-ENOMEM);

	func_mdev = priv->mdev;
	peer_mdev = FUNC10(FUNC3(priv->netdev), peer_ifindex);

	pair = FUNC6(func_mdev, peer_mdev, params);
	if (FUNC1(pair)) {
		err = FUNC2(pair);
		goto create_pair_err;
	}
	hp->pair = pair;
	hp->func_mdev = func_mdev;
	hp->func_priv = priv;
	hp->num_channels = params->num_channels;

	err = FUNC8(hp);
	if (err)
		goto create_transport_err;

	if (hp->num_channels > 1) {
		err = FUNC11(hp);
		if (err)
			goto rss_init_err;
	}

	return hp;

rss_init_err:
	FUNC9(hp);
create_transport_err:
	FUNC7(hp->pair);
create_pair_err:
	FUNC4(hp);
	return FUNC0(err);
}