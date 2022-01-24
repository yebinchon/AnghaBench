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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_eq {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
#define  EQ_INTR 130 
#define  EQ_LOG_PG_SZ 129 
#define  EQ_NUM_EQES 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eq_context_entry ; 
 int /*<<< orphan*/  eqc ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_eq_size ; 
 int /*<<< orphan*/  log_page_size ; 
 int FUNC5 (struct mlx5_core_dev*,struct mlx5_eq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  query_eq_out ; 

__attribute__((used)) static u64 FUNC7(struct mlx5_core_dev *dev, struct mlx5_eq *eq,
			 int index)
{
	int outlen = FUNC2(query_eq_out);
	u64 param = 0;
	void *ctx;
	u32 *out;
	int err;

	out = FUNC4(outlen, GFP_KERNEL);
	if (!out)
		return param;

	err = FUNC5(dev, eq, out, outlen);
	if (err) {
		FUNC6(dev, "failed to query eq\n");
		goto out;
	}
	ctx = FUNC0(query_eq_out, out, eq_context_entry);

	switch (index) {
	case EQ_NUM_EQES:
		param = 1 << FUNC1(eqc, ctx, log_eq_size);
		break;
	case EQ_INTR:
		param = FUNC1(eqc, ctx, intr);
		break;
	case EQ_LOG_PG_SZ:
		param = FUNC1(eqc, ctx, log_page_size) + 12;
		break;
	}

out:
	FUNC3(out);
	return param;
}