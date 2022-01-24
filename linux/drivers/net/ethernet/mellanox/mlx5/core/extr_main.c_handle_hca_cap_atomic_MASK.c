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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MLX5_SET_HCA_CAP_OP_MOD_ATOMIC ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atomic ; 
 int /*<<< orphan*/  atomic_caps ; 
 int /*<<< orphan*/  atomic_req_8B_endianness_mode ; 
 int /*<<< orphan*/  capability ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_core_dev*,int (*) (struct mlx5_core_dev*,int /*<<< orphan*/ )) ; 
 int FUNC8 (struct mlx5_core_dev*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_hca_cap_in ; 
 int /*<<< orphan*/  supported_atomic_req_8B_endianness_mode_1 ; 

__attribute__((used)) static int FUNC9(struct mlx5_core_dev *dev)
{
	void *set_ctx;
	void *set_hca_cap;
	int set_sz = FUNC4(set_hca_cap_in);
	int req_endianness;
	int err;

	if (FUNC2(dev, atomic)) {
		err = FUNC7(dev, MLX5_CAP_ATOMIC);
		if (err)
			return err;
	} else {
		return 0;
	}

	req_endianness =
		FUNC1(dev,
				supported_atomic_req_8B_endianness_mode_1);

	if (req_endianness != MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS)
		return 0;

	set_ctx = FUNC6(set_sz, GFP_KERNEL);
	if (!set_ctx)
		return -ENOMEM;

	set_hca_cap = FUNC0(set_hca_cap_in, set_ctx, capability);

	/* Set requestor to host endianness */
	FUNC3(atomic_caps, set_hca_cap, atomic_req_8B_endianness_mode,
		 MLX5_ATOMIC_REQ_MODE_HOST_ENDIANNESS);

	err = FUNC8(dev, set_ctx, set_sz, MLX5_SET_HCA_CAP_OP_MOD_ATOMIC);

	FUNC5(set_ctx);
	return err;
}