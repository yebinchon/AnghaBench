#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_5__* arfs_tables; int /*<<< orphan*/  wq; } ;
struct TYPE_8__ {TYPE_2__ arfs; } ;
struct mlx5e_priv {TYPE_3__ fs; TYPE_1__* netdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  t; } ;
struct TYPE_10__ {TYPE_4__ ft; } ;
struct TYPE_6__ {int hw_features; } ;

/* Variables and functions */
 int ARFS_NUM_TYPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NETIF_F_NTUPLE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mlx5e_priv *priv)
{
	int i;

	if (!(priv->netdev->hw_features & NETIF_F_NTUPLE))
		return;

	FUNC1(priv);
	FUNC3(priv->fs.arfs.wq);
	for (i = 0; i < ARFS_NUM_TYPES; i++) {
		if (!FUNC0(priv->fs.arfs.arfs_tables[i].ft.t))
			FUNC2(&priv->fs.arfs.arfs_tables[i]);
	}
}