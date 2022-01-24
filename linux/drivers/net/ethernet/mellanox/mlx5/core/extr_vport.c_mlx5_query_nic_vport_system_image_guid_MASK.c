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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  system_image_guid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ nic_vport_context ; 
 int /*<<< orphan*/  query_nic_vport_context_out ; 

int FUNC5(struct mlx5_core_dev *mdev,
					   u64 *system_image_guid)
{
	u32 *out;
	int outlen = FUNC1(query_nic_vport_context_out);

	out = FUNC3(outlen, GFP_KERNEL);
	if (!out)
		return -ENOMEM;

	FUNC4(mdev, 0, out, outlen);

	*system_image_guid = FUNC0(query_nic_vport_context_out, out,
					nic_vport_context.system_image_guid);

	FUNC2(out);

	return 0;
}