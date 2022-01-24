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
struct mlx5e_xdpsq {scalar_t__ pc; scalar_t__ cc; int /*<<< orphan*/  umem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mlx5e_xdpsq *sq)
{
	if (!FUNC2(sq->umem))
		return;

	if (sq->pc != sq->cc)
		FUNC0(sq->umem);
	else
		FUNC1(sq->umem);
}