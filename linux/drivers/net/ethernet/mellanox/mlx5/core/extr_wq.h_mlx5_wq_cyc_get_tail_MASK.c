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
struct mlx5_wq_cyc {scalar_t__ cur_sz; scalar_t__ wqe_ctr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_wq_cyc*,scalar_t__) ; 

__attribute__((used)) static inline u16 FUNC1(struct mlx5_wq_cyc *wq)
{
	return FUNC0(wq, wq->wqe_ctr - wq->cur_sz);
}