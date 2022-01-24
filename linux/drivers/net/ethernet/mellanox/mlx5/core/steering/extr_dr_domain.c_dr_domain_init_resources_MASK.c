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
struct mlx5dr_domain {int /*<<< orphan*/  pdn; int /*<<< orphan*/  mdev; int /*<<< orphan*/  uar; void* ste_icm_pool; void* action_icm_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR_ICM_TYPE_MODIFY_ACTION ; 
 int /*<<< orphan*/  DR_ICM_TYPE_STE ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_domain*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_domain*,char*) ; 
 void* FUNC6 (struct mlx5dr_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (struct mlx5dr_domain*) ; 

__attribute__((used)) static int FUNC9(struct mlx5dr_domain *dmn)
{
	int ret;

	ret = FUNC0(dmn->mdev, &dmn->pdn);
	if (ret) {
		FUNC4(dmn, "Couldn't allocate PD\n");
		return ret;
	}

	dmn->uar = FUNC2(dmn->mdev);
	if (!dmn->uar) {
		FUNC5(dmn, "Couldn't allocate UAR\n");
		ret = -ENOMEM;
		goto clean_pd;
	}

	dmn->ste_icm_pool = FUNC6(dmn, DR_ICM_TYPE_STE);
	if (!dmn->ste_icm_pool) {
		FUNC5(dmn, "Couldn't get icm memory\n");
		ret = -ENOMEM;
		goto clean_uar;
	}

	dmn->action_icm_pool = FUNC6(dmn, DR_ICM_TYPE_MODIFY_ACTION);
	if (!dmn->action_icm_pool) {
		FUNC5(dmn, "Couldn't get action icm memory\n");
		ret = -ENOMEM;
		goto free_ste_icm_pool;
	}

	ret = FUNC8(dmn);
	if (ret) {
		FUNC5(dmn, "Couldn't create send-ring\n");
		goto free_action_icm_pool;
	}

	return 0;

free_action_icm_pool:
	FUNC7(dmn->action_icm_pool);
free_ste_icm_pool:
	FUNC7(dmn->ste_icm_pool);
clean_uar:
	FUNC3(dmn->mdev, dmn->uar);
clean_pd:
	FUNC1(dmn->mdev, dmn->pdn);

	return ret;
}