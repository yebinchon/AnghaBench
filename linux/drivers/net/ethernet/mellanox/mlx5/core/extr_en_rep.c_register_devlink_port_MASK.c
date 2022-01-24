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
struct netdev_phys_item_id {int /*<<< orphan*/  id_len; int /*<<< orphan*/ * id; } ;
struct mlx5e_rep_priv {int /*<<< orphan*/  dl_port; struct mlx5_eswitch_rep* rep; int /*<<< orphan*/  netdev; } ;
struct mlx5_eswitch_rep {unsigned int vport; } ;
struct TYPE_3__ {int /*<<< orphan*/  eswitch; } ;
struct mlx5_core_dev {TYPE_2__* pdev; TYPE_1__ priv; } ;
struct devlink {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_PHYSICAL ; 
 unsigned int MLX5_VPORT_PF ; 
 unsigned int MLX5_VPORT_UPLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct devlink*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct netdev_phys_item_id*) ; 
 struct devlink* FUNC8 (struct mlx5_core_dev*) ; 
 unsigned int FUNC9 (struct mlx5_core_dev*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct mlx5_core_dev *dev,
				 struct mlx5e_rep_priv *rpriv)
{
	struct devlink *devlink = FUNC8(dev);
	struct mlx5_eswitch_rep *rep = rpriv->rep;
	struct netdev_phys_item_id ppid = {};
	unsigned int dl_port_index = 0;

	if (!FUNC5(dev, rpriv))
		return 0;

	FUNC7(rpriv->netdev, &ppid);

	if (rep->vport == MLX5_VPORT_UPLINK) {
		FUNC3(&rpriv->dl_port,
				       DEVLINK_PORT_FLAVOUR_PHYSICAL,
				       FUNC0(dev->pdev->devfn), false, 0,
				       &ppid.id[0], ppid.id_len);
		dl_port_index = FUNC9(dev, rep->vport);
	} else if (rep->vport == MLX5_VPORT_PF) {
		FUNC1(&rpriv->dl_port,
					      &ppid.id[0], ppid.id_len,
					      dev->pdev->devfn);
		dl_port_index = rep->vport;
	} else if (FUNC6(dev->priv.eswitch,
					    rpriv->rep->vport)) {
		FUNC2(&rpriv->dl_port,
					      &ppid.id[0], ppid.id_len,
					      dev->pdev->devfn,
					      rep->vport - 1);
		dl_port_index = FUNC9(dev, rep->vport);
	}

	return FUNC4(devlink, &rpriv->dl_port, dl_port_index);
}