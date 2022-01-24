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
struct mlx5_vxlan {int /*<<< orphan*/  htable; int /*<<< orphan*/  lock; int /*<<< orphan*/  sync_lock; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOTSUPP ; 
 struct mlx5_vxlan* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IANA_VXLAN_UDP_PORT ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx5_vxlan* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_vxlan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tunnel_stateless_vxlan ; 

struct mlx5_vxlan *FUNC8(struct mlx5_core_dev *mdev)
{
	struct mlx5_vxlan *vxlan;

	if (!FUNC1(mdev, tunnel_stateless_vxlan) || !FUNC4(mdev))
		return FUNC0(-ENOTSUPP);

	vxlan = FUNC3(sizeof(*vxlan), GFP_KERNEL);
	if (!vxlan)
		return FUNC0(-ENOMEM);

	vxlan->mdev = mdev;
	FUNC6(&vxlan->sync_lock);
	FUNC7(&vxlan->lock);
	FUNC2(vxlan->htable);

	/* Hardware adds 4789 (IANA_VXLAN_UDP_PORT) by default */
	FUNC5(vxlan, IANA_VXLAN_UDP_PORT);

	return vxlan;
}