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
struct mlx5e_priv {int dummy; } ;

/* Variables and functions */
 int NUM_PPORT_PER_PRIO_PFC_COUNTERS ; 
 int FUNC0 (struct mlx5e_priv*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_priv *priv)
{
	return (FUNC2(priv) +
		FUNC1(FUNC3(priv))) *
		NUM_PPORT_PER_PRIO_PFC_COUNTERS +
		FUNC0(priv);
}