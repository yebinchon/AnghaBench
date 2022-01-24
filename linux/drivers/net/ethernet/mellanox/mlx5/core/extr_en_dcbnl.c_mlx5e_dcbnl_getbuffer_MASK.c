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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_port_buffer {int /*<<< orphan*/  port_buffer_size; TYPE_1__* buffer; } ;
struct mlx5_core_dev {int dummy; } ;
struct dcbnl_buffer {int /*<<< orphan*/  total_size; int /*<<< orphan*/ * buffer_size; int /*<<< orphan*/ * prio2buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MLX5E_MAX_BUFFER ; 
 int MLX5E_MAX_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int FUNC1 (struct mlx5e_priv*,struct mlx5e_port_buffer*) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
				 struct dcbnl_buffer *dcb_buffer)
{
	struct mlx5e_priv *priv = FUNC3(dev);
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_port_buffer port_buffer;
	u8 buffer[MLX5E_MAX_PRIORITY];
	int i, err;

	if (!FUNC0(mdev))
		return -EOPNOTSUPP;

	err = FUNC2(mdev, buffer);
	if (err)
		return err;

	for (i = 0; i < MLX5E_MAX_PRIORITY; i++)
		dcb_buffer->prio2buffer[i] = buffer[i];

	err = FUNC1(priv, &port_buffer);
	if (err)
		return err;

	for (i = 0; i < MLX5E_MAX_BUFFER; i++)
		dcb_buffer->buffer_size[i] = port_buffer.buffer[i].size;
	dcb_buffer->total_size = port_buffer.port_buffer_size;

	return 0;
}