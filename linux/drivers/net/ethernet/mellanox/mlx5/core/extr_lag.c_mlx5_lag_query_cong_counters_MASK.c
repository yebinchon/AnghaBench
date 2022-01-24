#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct mlx5_lag {TYPE_1__* pf; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {struct mlx5_core_dev* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_MAX_PORTS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_lag*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lag_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mlx5_core_dev*,int,void*,int) ; 
 struct mlx5_lag* FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  query_cong_statistics_out ; 

int FUNC10(struct mlx5_core_dev *dev,
				 u64 *values,
				 int num_counters,
				 size_t *offsets)
{
	int outlen = FUNC0(query_cong_statistics_out);
	struct mlx5_core_dev *mdev[MLX5_MAX_PORTS];
	struct mlx5_lag *ldev;
	int num_ports;
	int ret, i, j;
	void *out;

	out = FUNC4(outlen, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	FUNC5(values, 0, sizeof(*values) * num_counters);

	FUNC8(&lag_mutex);
	ldev = FUNC7(dev);
	if (ldev && FUNC1(ldev)) {
		num_ports = MLX5_MAX_PORTS;
		mdev[0] = ldev->pf[0].dev;
		mdev[1] = ldev->pf[1].dev;
	} else {
		num_ports = 1;
		mdev[0] = dev;
	}

	for (i = 0; i < num_ports; ++i) {
		ret = FUNC6(mdev[i], false, out, outlen);
		if (ret)
			goto unlock;

		for (j = 0; j < num_counters; ++j)
			values[j] += FUNC2((__be64 *)(out + offsets[j]));
	}

unlock:
	FUNC9(&lag_mutex);
	FUNC3(out);
	return ret;
}