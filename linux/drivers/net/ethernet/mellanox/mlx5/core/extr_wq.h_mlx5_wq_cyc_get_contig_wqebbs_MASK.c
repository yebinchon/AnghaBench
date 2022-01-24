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
typedef  scalar_t__ u16 ;
struct mlx5_wq_cyc {int /*<<< orphan*/  fbc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline u16 FUNC1(struct mlx5_wq_cyc *wq, u16 ix)
{
	return FUNC0(&wq->fbc, ix) - ix + 1;
}