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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5e_wqe_frag_info {int dummy; } ;
struct mlx5e_rq {int dummy; } ;

/* Variables and functions */
 struct mlx5e_wqe_frag_info* FUNC0 (struct mlx5e_rq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rq*,struct mlx5e_wqe_frag_info*,int) ; 

void FUNC2(struct mlx5e_rq *rq, u16 ix)
{
	struct mlx5e_wqe_frag_info *wi = FUNC0(rq, ix);

	FUNC1(rq, wi, false);
}