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
typedef  void u32 ;
struct mlx5_core_qp {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (void*,void*,void*) ; 
 int MLX5_QP_ENHANCED_ULP_STATELESS_MODE ; 
 int MLX5_QP_PM_MIGRATED ; 
 int MLX5_QP_ST_UD ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void*) ; 
 void* ads ; 
 void* create_qp_in ; 
 int /*<<< orphan*/  grh ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,struct mlx5_core_qp*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  pm_state ; 
 void* primary_address_path ; 
 int /*<<< orphan*/  st ; 
 int /*<<< orphan*/  ulp_stateless_offload_mode ; 
 int /*<<< orphan*/  vhca_port_num ; 

int FUNC7(struct mlx5_core_dev *mdev, struct mlx5_core_qp *qp)
{
	u32 *in = NULL;
	void *addr_path;
	int ret = 0;
	int inlen;
	void *qpc;

	inlen = FUNC2(create_qp_in);
	in = FUNC4(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	qpc = FUNC0(create_qp_in, in, qpc);
	FUNC1(qpc, qpc, st, MLX5_QP_ST_UD);
	FUNC1(qpc, qpc, pm_state, MLX5_QP_PM_MIGRATED);
	FUNC1(qpc, qpc, ulp_stateless_offload_mode,
		 MLX5_QP_ENHANCED_ULP_STATELESS_MODE);

	addr_path = FUNC0(qpc, qpc, primary_address_path);
	FUNC1(ads, addr_path, vhca_port_num, 1);
	FUNC1(ads, addr_path, grh, 1);

	ret = FUNC5(mdev, qp, in, inlen);
	if (ret) {
		FUNC6(mdev, "Failed creating IPoIB QP err : %d\n", ret);
		goto out;
	}

out:
	FUNC3(in);
	return ret;
}