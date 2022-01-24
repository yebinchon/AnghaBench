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
struct mlx5_wq_cyc {int dummy; } ;
struct mlx5e_txqsq {int /*<<< orphan*/  pc; struct mlx5_wq_cyc wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct mlx5_wq_cyc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void *
FUNC3(struct mlx5e_txqsq *sq, size_t size, u16 *pi)
{
	struct mlx5_wq_cyc *wq = &sq->wq;
	void *wqe;

	*pi  = FUNC1(wq, sq->pc);
	wqe = FUNC2(wq, *pi);
	FUNC0(wqe, 0, size);

	return wqe;
}