#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct mlx5e_l2_hash_node {int action; int mpfs; TYPE_1__ ai; } ;

/* Variables and functions */
 int ETH_ALEN ; 
#define  MLX5E_ACTION_ADD 129 
#define  MLX5E_ACTION_DEL 128 
 int MLX5E_ACTION_NONE ; 
 int /*<<< orphan*/  MLX5E_FULLMATCH ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_l2_hash_node*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int*,int) ; 

__attribute__((used)) static void FUNC8(struct mlx5e_priv *priv,
				    struct mlx5e_l2_hash_node *hn)
{
	u8 action = hn->action;
	u8 mac_addr[ETH_ALEN];
	int l2_err = 0;

	FUNC0(mac_addr, hn->ai.addr);

	switch (action) {
	case MLX5E_ACTION_ADD:
		FUNC4(priv, &hn->ai, MLX5E_FULLMATCH);
		if (!FUNC1(mac_addr)) {
			l2_err = FUNC2(priv->mdev, mac_addr);
			hn->mpfs = !l2_err;
		}
		hn->action = MLX5E_ACTION_NONE;
		break;

	case MLX5E_ACTION_DEL:
		if (!FUNC1(mac_addr) && hn->mpfs)
			l2_err = FUNC3(priv->mdev, mac_addr);
		FUNC5(priv, &hn->ai);
		FUNC6(hn);
		break;
	}

	if (l2_err)
		FUNC7(priv->netdev, "MPFS, failed to %s mac %pM, err(%d)\n",
			    action == MLX5E_ACTION_ADD ? "add" : "del", mac_addr, l2_err);
}