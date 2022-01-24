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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_vxlan_port {int /*<<< orphan*/  hlist; int /*<<< orphan*/  refcount; } ;
struct mlx5_vxlan {int /*<<< orphan*/  sync_lock; int /*<<< orphan*/  num_ports; int /*<<< orphan*/  mdev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_vxlan_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_vxlan_port* FUNC3 (struct mlx5_vxlan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mlx5_vxlan *vxlan, u16 port)
{
	struct mlx5_vxlan_port *vxlanp;
	bool remove = false;
	int ret = 0;

	FUNC4(&vxlan->sync_lock);

	FUNC7(&vxlan->lock);
	vxlanp = FUNC3(vxlan, port);
	if (!vxlanp) {
		ret = -ENOENT;
		goto out_unlock;
	}

	if (FUNC6(&vxlanp->refcount)) {
		FUNC0(&vxlanp->hlist);
		remove = true;
	}

out_unlock:
	FUNC8(&vxlan->lock);

	if (remove) {
		FUNC2(vxlan->mdev, port);
		FUNC1(vxlanp);
		vxlan->num_ports--;
	}

	FUNC5(&vxlan->sync_lock);

	return ret;
}