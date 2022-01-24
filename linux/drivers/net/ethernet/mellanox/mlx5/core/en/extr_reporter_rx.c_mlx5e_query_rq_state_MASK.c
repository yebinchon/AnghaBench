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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  query_rq_out ; 
 int /*<<< orphan*/  rq_context ; 

__attribute__((used)) static int FUNC6(struct mlx5_core_dev *dev, u32 rqn, u8 *state)
{
	int outlen = FUNC2(query_rq_out);
	void *out;
	void *rqc;
	int err;

	out = FUNC4(outlen, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	err = FUNC5(dev, rqn, out);
	if (err)
		goto out;

	rqc = FUNC0(query_rq_out, out, rq_context);
	*state = FUNC1(rqc, rqc, state);

out:
	FUNC3(out);
	return err;
}