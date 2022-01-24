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
struct mlx4_mtt {scalar_t__ order; int /*<<< orphan*/  offset; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC1(struct mlx4_dev *dev, struct mlx4_mtt *mtt)
{
	if (mtt->order < 0)
		return;

	FUNC0(dev, mtt->offset, mtt->order);
}