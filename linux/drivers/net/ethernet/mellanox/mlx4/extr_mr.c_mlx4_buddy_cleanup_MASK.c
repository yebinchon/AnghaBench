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
struct mlx4_buddy {int max_order; int /*<<< orphan*/ * num_free; int /*<<< orphan*/ * bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlx4_buddy *buddy)
{
	int i;

	for (i = 0; i <= buddy->max_order; ++i)
		FUNC1(buddy->bits[i]);

	FUNC0(buddy->bits);
	FUNC0(buddy->num_free);
}