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
typedef  int u32 ;
struct mlx5_core_dev {int bar_addr; } ;

/* Variables and functions */
 int MLX5_ADAPTER_PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  uar_4k ; 

__attribute__((used)) static u64 FUNC1(struct mlx5_core_dev *mdev, u32 index)
{
	u32 system_page_index;

	if (FUNC0(mdev, uar_4k))
		system_page_index = index >> (PAGE_SHIFT - MLX5_ADAPTER_PAGE_SHIFT);
	else
		system_page_index = index;

	return (mdev->bar_addr >> PAGE_SHIFT) + system_page_index;
}