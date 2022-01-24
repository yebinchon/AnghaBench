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
struct mlx5e_priv {TYPE_1__* netdev; int /*<<< orphan*/  mdev; struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int no_trailer; int /*<<< orphan*/  wq; struct mlx5e_priv* en_priv; int /*<<< orphan*/  halloc; int /*<<< orphan*/  sadb_rx_lock; int /*<<< orphan*/  sadb_rx; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_ipsec*) ; 
 struct mlx5e_ipsec* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mlx5e_priv *priv)
{
	struct mlx5e_ipsec *ipsec = NULL;

	if (!FUNC0(priv->mdev)) {
		FUNC7(priv->netdev, "Not an IPSec offload device\n");
		return 0;
	}

	ipsec = FUNC5(sizeof(*ipsec), GFP_KERNEL);
	if (!ipsec)
		return -ENOMEM;

	FUNC2(ipsec->sadb_rx);
	FUNC8(&ipsec->sadb_rx_lock);
	FUNC3(&ipsec->halloc);
	ipsec->en_priv = priv;
	ipsec->en_priv->ipsec = ipsec;
	ipsec->no_trailer = !!(FUNC6(priv->mdev) &
			       MLX5_ACCEL_IPSEC_CAP_RX_NO_TRAILER);
	ipsec->wq = FUNC1("mlx5e_ipsec: %s", 0,
					    priv->netdev->name);
	if (!ipsec->wq) {
		FUNC4(ipsec);
		return -ENOMEM;
	}
	FUNC7(priv->netdev, "IPSec attached to netdevice\n");
	return 0;
}