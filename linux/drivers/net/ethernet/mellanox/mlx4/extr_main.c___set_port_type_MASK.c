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
struct mlx4_priv {int /*<<< orphan*/  port_mutex; TYPE_2__* port; } ;
struct mlx4_port_info {size_t port; int tmp_type; struct mlx4_dev* dev; } ;
struct TYPE_3__ {int* supported_type; int* possible_type; int num_ports; int* port_type; int flags; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
typedef  enum mlx4_port_type { ____Placeholder_mlx4_port_type } mlx4_port_type ;
struct TYPE_4__ {int tmp_type; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int MLX4_DEV_CAP_FLAG_DPDP ; 
 int MLX4_DEV_CAP_FLAG_SENSE_SUPPORT ; 
 int MLX4_MAX_PORTS ; 
 int MLX4_PORT_TYPE_AUTO ; 
 int FUNC0 (struct mlx4_dev*,int*) ; 
 int FUNC1 (struct mlx4_dev*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,char*,...) ; 
 struct mlx4_priv* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mlx4_port_info *info,
			   enum mlx4_port_type port_type)
{
	struct mlx4_dev *mdev = info->dev;
	struct mlx4_priv *priv = FUNC4(mdev);
	enum mlx4_port_type types[MLX4_MAX_PORTS];
	enum mlx4_port_type new_types[MLX4_MAX_PORTS];
	int i;
	int err = 0;

	if ((port_type & mdev->caps.supported_type[info->port]) != port_type) {
		FUNC3(mdev,
			 "Requested port type for port %d is not supported on this HCA\n",
			 info->port);
		return -EOPNOTSUPP;
	}

	FUNC6(mdev);
	FUNC7(&priv->port_mutex);
	info->tmp_type = port_type;

	/* Possible type is always the one that was delivered */
	mdev->caps.possible_type[info->port] = info->tmp_type;

	for (i = 0; i < mdev->caps.num_ports; i++) {
		types[i] = priv->port[i+1].tmp_type ? priv->port[i+1].tmp_type :
					mdev->caps.possible_type[i+1];
		if (types[i] == MLX4_PORT_TYPE_AUTO)
			types[i] = mdev->caps.port_type[i+1];
	}

	if (!(mdev->caps.flags & MLX4_DEV_CAP_FLAG_DPDP) &&
	    !(mdev->caps.flags & MLX4_DEV_CAP_FLAG_SENSE_SUPPORT)) {
		for (i = 1; i <= mdev->caps.num_ports; i++) {
			if (mdev->caps.possible_type[i] == MLX4_PORT_TYPE_AUTO) {
				mdev->caps.possible_type[i] = mdev->caps.port_type[i];
				err = -EOPNOTSUPP;
			}
		}
	}
	if (err) {
		FUNC3(mdev, "Auto sensing is not supported on this HCA. Set only 'eth' or 'ib' for both ports (should be the same)\n");
		goto out;
	}

	FUNC2(mdev, new_types, types);

	err = FUNC1(mdev, new_types);
	if (err)
		goto out;

	/* We are about to apply the changes after the configuration
	 * was verified, no need to remember the temporary types
	 * any more */
	for (i = 0; i < mdev->caps.num_ports; i++)
		priv->port[i + 1].tmp_type = 0;

	err = FUNC0(mdev, new_types);

out:
	FUNC5(mdev);
	FUNC8(&priv->port_mutex);

	return err;
}