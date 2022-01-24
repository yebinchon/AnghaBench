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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ieee_vendor_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  query_adapter_out ; 
 TYPE_1__ query_adapter_struct ; 

int FUNC5(struct mlx5_core_dev *mdev, u32 *vendor_id)
{
	u32 *out;
	int outlen = FUNC1(query_adapter_out);
	int err;

	out = FUNC3(outlen, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	err = FUNC4(mdev, out, outlen);
	if (err)
		goto out;

	*vendor_id = FUNC0(query_adapter_out, out,
			      query_adapter_struct.ieee_vendor_id);
out:
	FUNC2(out);
	return err;
}