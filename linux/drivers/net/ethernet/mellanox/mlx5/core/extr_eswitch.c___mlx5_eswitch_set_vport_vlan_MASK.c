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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {int vlan; int qos; } ;
struct mlx5_vport {scalar_t__ enabled; TYPE_1__ info; } ;
struct mlx5_eswitch {scalar_t__ mode; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 scalar_t__ FUNC1 (struct mlx5_vport*) ; 
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 int FUNC2 (struct mlx5_vport*) ; 
 int FUNC3 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int FUNC4 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 struct mlx5_vport* FUNC5 (struct mlx5_eswitch*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int,int,int) ; 

int FUNC7(struct mlx5_eswitch *esw,
				  u16 vport, u16 vlan, u8 qos, u8 set_flags)
{
	struct mlx5_vport *evport = FUNC5(esw, vport);
	int err = 0;

	if (!FUNC0(esw))
		return -EPERM;
	if (FUNC1(evport))
		return FUNC2(evport);
	if (vlan > 4095 || qos > 7)
		return -EINVAL;

	err = FUNC6(esw->dev, vport, vlan, qos, set_flags);
	if (err)
		return err;

	evport->info.vlan = vlan;
	evport->info.qos = qos;
	if (evport->enabled && esw->mode == MLX5_ESWITCH_LEGACY) {
		err = FUNC4(esw, evport);
		if (err)
			return err;
		err = FUNC3(esw, evport);
	}

	return err;
}