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
struct mlx5e_hairpin {int num_channels; int /*<<< orphan*/  pair; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_hairpin*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_hairpin*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_hairpin*) ; 

__attribute__((used)) static void FUNC4(struct mlx5e_hairpin *hp)
{
	if (hp->num_channels > 1)
		FUNC3(hp);
	FUNC2(hp);
	FUNC1(hp->pair);
	FUNC0(hp);
}