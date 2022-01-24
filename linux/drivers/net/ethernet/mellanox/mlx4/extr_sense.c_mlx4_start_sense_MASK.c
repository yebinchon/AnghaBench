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
struct mlx4_sense {int /*<<< orphan*/  sense_poll; } ;
struct mlx4_priv {struct mlx4_sense sense; } ;
struct TYPE_2__ {int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int MLX4_DEV_CAP_FLAG_DPDP ; 
 int /*<<< orphan*/  MLX4_SENSE_RANGE ; 
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  mlx4_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC0(dev);
	struct mlx4_sense *sense = &priv->sense;

	if (!(dev->caps.flags & MLX4_DEV_CAP_FLAG_DPDP))
		return;

	FUNC1(mlx4_wq , &sense->sense_poll,
			   FUNC2(MLX4_SENSE_RANGE));
}