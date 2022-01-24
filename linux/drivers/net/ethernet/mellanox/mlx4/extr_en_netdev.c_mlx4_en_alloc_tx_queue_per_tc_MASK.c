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
typedef  scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {scalar_t__ port_up; int /*<<< orphan*/  prof; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_port_profile {int num_up; int* tx_ring_num; int num_tx_rings_p_up; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_EN_NUM_UP_HIGH ; 
 int MLX4_EN_NUM_UP_LOW ; 
 size_t TX ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*) ; 
 struct mlx4_en_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_port_profile*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_en_priv*,struct mlx4_en_priv*) ; 
 int FUNC5 (struct net_device*,scalar_t__) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int FUNC8 (struct mlx4_en_priv*,struct mlx4_en_priv*,struct mlx4_en_port_profile*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC11 (struct net_device*) ; 

int FUNC12(struct net_device *dev, u8 tc)
{
	struct mlx4_en_priv *priv = FUNC11(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_port_profile new_prof;
	struct mlx4_en_priv *tmp;
	int port_up = 0;
	int err = 0;

	tmp = FUNC2(sizeof(*tmp), GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	FUNC9(&mdev->state_lock);
	FUNC3(&new_prof, priv->prof, sizeof(struct mlx4_en_port_profile));
	new_prof.num_up = (tc == 0) ? MLX4_EN_NUM_UP_LOW :
				      MLX4_EN_NUM_UP_HIGH;
	new_prof.tx_ring_num[TX] = new_prof.num_tx_rings_p_up *
				   new_prof.num_up;
	err = FUNC8(priv, tmp, &new_prof, true);
	if (err)
		goto out;

	if (priv->port_up) {
		port_up = 1;
		FUNC7(dev, 1);
	}

	FUNC4(priv, tmp);
	if (port_up) {
		err = FUNC6(dev);
		if (err) {
			FUNC0(priv, "Failed starting port for setup TC\n");
			goto out;
		}
	}

	err = FUNC5(dev, tc);
out:
	FUNC10(&mdev->state_lock);
	FUNC1(tmp);
	return err;
}