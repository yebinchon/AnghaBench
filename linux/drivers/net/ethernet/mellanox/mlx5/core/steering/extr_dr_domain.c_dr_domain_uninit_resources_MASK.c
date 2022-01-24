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
struct mlx5dr_domain {int /*<<< orphan*/  pdn; int /*<<< orphan*/  mdev; int /*<<< orphan*/  uar; int /*<<< orphan*/  ste_icm_pool; int /*<<< orphan*/  action_icm_pool; int /*<<< orphan*/  send_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_domain*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mlx5dr_domain *dmn)
{
	FUNC3(dmn, dmn->send_ring);
	FUNC2(dmn->action_icm_pool);
	FUNC2(dmn->ste_icm_pool);
	FUNC1(dmn->mdev, dmn->uar);
	FUNC0(dmn->mdev, dmn->pdn);
}