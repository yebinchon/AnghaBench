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
struct mlx5dr_ste {int /*<<< orphan*/  refcount; } ;
struct mlx5dr_matcher_rx_tx {int dummy; } ;
struct mlx5dr_matcher {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_ste*,struct mlx5dr_matcher*,struct mlx5dr_matcher_rx_tx*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct mlx5dr_ste *ste,
				  struct mlx5dr_matcher *matcher,
				  struct mlx5dr_matcher_rx_tx *nic_matcher)
{
	if (FUNC1(&ste->refcount))
		FUNC0(ste, matcher, nic_matcher);
}