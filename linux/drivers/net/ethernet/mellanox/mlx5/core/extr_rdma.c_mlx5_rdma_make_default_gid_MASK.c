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
struct TYPE_2__ {int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {int /*<<< orphan*/ * raw; TYPE_1__ global; } ;
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *dev, union ib_gid *gid)
{
	u8 hw_id[ETH_ALEN];

	FUNC2(dev, hw_id);
	gid->global.subnet_prefix = FUNC1(0xfe80000000000000LL);
	FUNC0(&gid->raw[8], hw_id);
}