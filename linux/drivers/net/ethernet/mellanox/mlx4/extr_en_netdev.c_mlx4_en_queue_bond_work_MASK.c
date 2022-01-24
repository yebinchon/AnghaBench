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
typedef  void* u8 ;
struct mlx4_en_priv {TYPE_2__* mdev; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {void* port2; void* port1; } ;
struct mlx4_en_bond {int is_bonded; int /*<<< orphan*/  work; TYPE_1__ port_map; struct mlx4_en_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mlx4_en_bond* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx4_en_bond_work ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlx4_en_priv *priv, int is_bonded,
				   u8 v2p_p1, u8 v2p_p2)
{
	struct mlx4_en_bond *bond = NULL;

	bond = FUNC2(sizeof(*bond), GFP_ATOMIC);
	if (!bond)
		return -ENOMEM;

	FUNC0(&bond->work, mlx4_en_bond_work);
	bond->priv = priv;
	bond->is_bonded = is_bonded;
	bond->port_map.port1 = v2p_p1;
	bond->port_map.port2 = v2p_p2;
	FUNC1(priv->dev);
	FUNC3(priv->mdev->workqueue, &bond->work);
	return 0;
}