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
struct TYPE_3__ {int /*<<< orphan*/  log_icm_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  supp_sw_steering; TYPE_1__ caps; int /*<<< orphan*/  max_log_sw_icm_sz; int /*<<< orphan*/  max_log_action_icm_sz; } ;
struct mlx5dr_domain {int type; TYPE_2__ info; int /*<<< orphan*/  mutex; int /*<<< orphan*/  refcount; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5dr_domain_type { ____Placeholder_mlx5dr_domain_type } mlx5dr_domain_type ;

/* Variables and functions */
 int /*<<< orphan*/  DR_CHUNK_SIZE_1024K ; 
 int /*<<< orphan*/  DR_CHUNK_SIZE_4K ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5DR_DOMAIN_TYPE_FDB ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_domain*) ; 
 int FUNC2 (struct mlx5dr_domain*) ; 
 int FUNC3 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5dr_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5dr_domain*) ; 
 struct mlx5dr_domain* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5dr_domain*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5dr_domain*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  u32 ; 

struct mlx5dr_domain *
FUNC13(struct mlx5_core_dev *mdev, enum mlx5dr_domain_type type)
{
	struct mlx5dr_domain *dmn;
	int ret;

	if (type > MLX5DR_DOMAIN_TYPE_FDB)
		return NULL;

	dmn = FUNC6(sizeof(*dmn), GFP_KERNEL);
	if (!dmn)
		return NULL;

	dmn->mdev = mdev;
	dmn->type = type;
	FUNC12(&dmn->refcount, 1);
	FUNC11(&dmn->mutex);

	if (FUNC0(mdev, dmn)) {
		FUNC9(dmn, "Failed init domain, no caps\n");
		goto free_domain;
	}

	dmn->info.max_log_action_icm_sz = DR_CHUNK_SIZE_4K;
	dmn->info.max_log_sw_icm_sz = FUNC7(u32, DR_CHUNK_SIZE_1024K,
					    dmn->info.caps.log_icm_size);

	if (!dmn->info.supp_sw_steering) {
		FUNC10(dmn, "SW steering is not supported\n");
		goto uninit_caps;
	}

	/* Allocate resources */
	ret = FUNC3(dmn);
	if (ret) {
		FUNC10(dmn, "Failed init domain resources\n");
		goto uninit_caps;
	}

	ret = FUNC2(dmn);
	if (ret) {
		FUNC10(dmn, "Failed initialize domain cache\n");
		goto uninit_resourses;
	}

	/* Init CRC table for htbl CRC calculation */
	FUNC8();

	return dmn;

uninit_resourses:
	FUNC4(dmn);
uninit_caps:
	FUNC1(dmn);
free_domain:
	FUNC5(dmn);
	return NULL;
}