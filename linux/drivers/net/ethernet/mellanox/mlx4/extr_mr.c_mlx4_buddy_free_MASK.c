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
typedef  int u32 ;
struct mlx4_buddy {int /*<<< orphan*/  lock; int /*<<< orphan*/ * num_free; int /*<<< orphan*/ * bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx4_buddy *buddy, u32 seg, int order)
{
	seg >>= order;

	FUNC2(&buddy->lock);

	while (FUNC4(seg ^ 1, buddy->bits[order])) {
		FUNC0(seg ^ 1, buddy->bits[order]);
		--buddy->num_free[order];
		seg >>= 1;
		++order;
	}

	FUNC1(seg, buddy->bits[order]);
	++buddy->num_free[order];

	FUNC3(&buddy->lock);
}