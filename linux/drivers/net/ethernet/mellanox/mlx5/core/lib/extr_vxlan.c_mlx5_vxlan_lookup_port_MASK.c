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
struct mlx5_vxlan_port {int dummy; } ;
struct mlx5_vxlan {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_vxlan*) ; 
 struct mlx5_vxlan_port* FUNC1 (struct mlx5_vxlan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct mlx5_vxlan_port *FUNC4(struct mlx5_vxlan *vxlan, u16 port)
{
	struct mlx5_vxlan_port *vxlanp;

	if (!FUNC0(vxlan))
		return NULL;

	FUNC2(&vxlan->lock);
	vxlanp = FUNC1(vxlan, port);
	FUNC3(&vxlan->lock);

	return vxlanp;
}