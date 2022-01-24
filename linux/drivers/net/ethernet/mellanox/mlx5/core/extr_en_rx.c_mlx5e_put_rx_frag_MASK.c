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
struct mlx5e_wqe_frag_info {int /*<<< orphan*/  di; scalar_t__ last_in_page; } ;
struct mlx5e_rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_rq*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(struct mlx5e_rq *rq,
				     struct mlx5e_wqe_frag_info *frag,
				     bool recycle)
{
	if (frag->last_in_page)
		FUNC0(rq, frag->di, recycle);
}