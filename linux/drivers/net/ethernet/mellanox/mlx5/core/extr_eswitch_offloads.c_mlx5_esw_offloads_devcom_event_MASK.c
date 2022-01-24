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
struct mlx5_eswitch {TYPE_2__* dev; } ;
struct mlx5_devcom {int dummy; } ;
struct TYPE_3__ {struct mlx5_devcom* devcom; } ;
struct TYPE_4__ {TYPE_1__ priv; } ;

/* Variables and functions */
#define  ESW_OFFLOADS_DEVCOM_PAIR 129 
#define  ESW_OFFLOADS_DEVCOM_UNPAIR 128 
 int /*<<< orphan*/  MLX5_DEVCOM_ESW_OFFLOADS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_devcom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_devcom*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx5_eswitch*,struct mlx5_eswitch*) ; 
 int FUNC4 (struct mlx5_eswitch*,struct mlx5_eswitch*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*) ; 

__attribute__((used)) static int FUNC7(int event,
					  void *my_data,
					  void *event_data)
{
	struct mlx5_eswitch *esw = my_data;
	struct mlx5_devcom *devcom = esw->dev->priv.devcom;
	struct mlx5_eswitch *peer_esw = event_data;
	int err;

	switch (event) {
	case ESW_OFFLOADS_DEVCOM_PAIR:
		if (FUNC6(esw) !=
		    FUNC6(peer_esw))
			break;

		err = FUNC4(esw, peer_esw, true);
		if (err)
			goto err_out;
		err = FUNC3(esw, peer_esw);
		if (err)
			goto err_peer;

		err = FUNC3(peer_esw, esw);
		if (err)
			goto err_pair;

		FUNC2(devcom, MLX5_DEVCOM_ESW_OFFLOADS, true);
		break;

	case ESW_OFFLOADS_DEVCOM_UNPAIR:
		if (!FUNC1(devcom, MLX5_DEVCOM_ESW_OFFLOADS))
			break;

		FUNC2(devcom, MLX5_DEVCOM_ESW_OFFLOADS, false);
		FUNC5(peer_esw);
		FUNC5(esw);
		FUNC4(esw, peer_esw, false);
		break;
	}

	return 0;

err_pair:
	FUNC5(esw);
err_peer:
	FUNC4(esw, peer_esw, false);
err_out:
	FUNC0(esw->dev, "esw offloads devcom event failure, event %u err %d",
		      event, err);
	return err;
}