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
union ib_gid {int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  MLX5_ROCE_VERSION_1 ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,union ib_gid*) ; 

__attribute__((used)) static int FUNC2(struct mlx5_core_dev *dev)
{
	union ib_gid gid;
	u8 mac[ETH_ALEN];

	FUNC1(dev, &gid);
	return FUNC0(dev, 0,
				      MLX5_ROCE_VERSION_1,
				      0, gid.raw, mac,
				      false, 0, 1);
}