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
struct mlx5_wqe_srq_next_seg {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5_wq_ll {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mlx5_wqe_srq_next_seg* FUNC1 (struct mlx5_wq_ll*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u16 FUNC2(struct mlx5_wq_ll *wq, u16 ix)
{
	struct mlx5_wqe_srq_next_seg *wqe = FUNC1(wq, ix);

	return FUNC0(wqe->next_wqe_index);
}