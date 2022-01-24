#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_steering {TYPE_2__* root_ns; } ;
struct TYPE_5__ {int /*<<< orphan*/  node; } ;
struct TYPE_6__ {TYPE_1__ ns; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FS_FT_NIC_RX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (struct mlx5_flow_steering*) ; 
 TYPE_2__* FUNC2 (struct mlx5_flow_steering*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_flow_steering*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  root_fs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct mlx5_flow_steering *steering)
{
	int err;

	steering->root_ns = FUNC2(steering, FS_FT_NIC_RX);
	if (!steering->root_ns)
		return -ENOMEM;

	err = FUNC3(steering, &root_fs, &steering->root_ns->ns.node);
	if (err)
		goto out_err;

	FUNC4(steering->root_ns);
	err = FUNC1(steering);
	if (err)
		goto out_err;

	return 0;

out_err:
	FUNC0(steering->root_ns);
	steering->root_ns = NULL;
	return err;
}