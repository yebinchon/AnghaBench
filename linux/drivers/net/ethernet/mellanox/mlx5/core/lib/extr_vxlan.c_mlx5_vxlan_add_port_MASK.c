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
struct mlx5_vxlan_port {int /*<<< orphan*/  hlist; int /*<<< orphan*/  refcount; int /*<<< orphan*/  udp_port; } ;
struct mlx5_vxlan {scalar_t__ num_ports; int /*<<< orphan*/  sync_lock; int /*<<< orphan*/  mdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  htable; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mlx5_vxlan_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_vxlan_port* FUNC5 (struct mlx5_vxlan*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct mlx5_vxlan *vxlan, u16 port)
{
	struct mlx5_vxlan_port *vxlanp;
	int ret = -ENOSPC;

	vxlanp = FUNC5(vxlan, port);
	if (vxlanp) {
		FUNC9(&vxlanp->refcount);
		return 0;
	}

	FUNC7(&vxlan->sync_lock);
	if (vxlan->num_ports >= FUNC6(vxlan->mdev)) {
		FUNC2(vxlan->mdev,
			       "UDP port (%d) not offloaded, max number of UDP ports (%d) are already offloaded\n",
			       port, FUNC6(vxlan->mdev));
		ret = -ENOSPC;
		goto unlock;
	}

	ret = FUNC3(vxlan->mdev, port);
	if (ret)
		goto unlock;

	vxlanp = FUNC1(sizeof(*vxlanp), GFP_KERNEL);
	if (!vxlanp) {
		ret = -ENOMEM;
		goto err_delete_port;
	}

	vxlanp->udp_port = port;
	FUNC10(&vxlanp->refcount, 1);

	FUNC11(&vxlan->lock);
	FUNC0(vxlan->htable, &vxlanp->hlist, port);
	FUNC12(&vxlan->lock);

	vxlan->num_ports++;
	FUNC8(&vxlan->sync_lock);
	return 0;

err_delete_port:
	FUNC4(vxlan->mdev, port);

unlock:
	FUNC8(&vxlan->sync_lock);
	return ret;
}