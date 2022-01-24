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
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ bf_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (struct mlx4_dev*) ; 

__attribute__((used)) static void FUNC2(struct mlx4_dev *dev)
{
	if (FUNC1(dev)->bf_mapping)
		FUNC0(FUNC1(dev)->bf_mapping);
}