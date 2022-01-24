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
struct mlx5dr_matcher {int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5dr_matcher*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mlx5dr_matcher *matcher)
{
	int ret;

	ret = FUNC0(matcher, &matcher->rx);
	if (ret)
		return ret;

	ret = FUNC0(matcher, &matcher->tx);
	if (ret)
		goto uninit_nic_rx;

	return 0;

uninit_nic_rx:
	FUNC1(&matcher->rx);
	return ret;
}