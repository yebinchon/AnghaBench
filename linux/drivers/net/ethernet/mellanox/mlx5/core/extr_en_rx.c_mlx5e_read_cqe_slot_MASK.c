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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_cqwq {int dummy; } ;
struct mlx5_cqe64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_cqwq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_cqwq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mlx5_cqwq *wq,
				       u32 cqcc, void *data)
{
	u32 ci = FUNC1(wq, cqcc);

	FUNC0(data, FUNC2(wq, ci), sizeof(struct mlx5_cqe64));
}