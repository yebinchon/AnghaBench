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
struct mlx5_core_dev {int dummy; } ;
struct mlx5_core_cq {int pid; } ;

/* Variables and functions */
#define  CQ_LOG_PG_SZ 130 
#define  CQ_NUM_CQES 129 
#define  CQ_PID 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cq_context ; 
 int /*<<< orphan*/  cqc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_cq_size ; 
 int /*<<< orphan*/  log_page_size ; 
 int FUNC5 (struct mlx5_core_dev*,struct mlx5_core_cq*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  query_cq_out ; 

__attribute__((used)) static u64 FUNC7(struct mlx5_core_dev *dev, struct mlx5_core_cq *cq,
			 int index)
{
	int outlen = FUNC2(query_cq_out);
	u64 param = 0;
	void *ctx;
	u32 *out;
	int err;

	out = FUNC4(outlen, GFP_KERNEL);
	if (!out)
		return param;

	err = FUNC5(dev, cq, out, outlen);
	if (err) {
		FUNC6(dev, "failed to query cq\n");
		goto out;
	}
	ctx = FUNC0(query_cq_out, out, cq_context);

	switch (index) {
	case CQ_PID:
		param = cq->pid;
		break;
	case CQ_NUM_CQES:
		param = 1 << FUNC1(cqc, ctx, log_cq_size);
		break;
	case CQ_LOG_PG_SZ:
		param = FUNC1(cqc, ctx, log_page_size);
		break;
	}

out:
	FUNC3(out);
	return param;
}