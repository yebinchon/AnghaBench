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
struct mlx5e_ttc_table {int /*<<< orphan*/ ** tunnel_rules; int /*<<< orphan*/ ** rules; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLX5E_NUM_TT ; 
 int MLX5E_NUM_TUNNEL_TT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_ttc_table *ttc)
{
	int i;

	for (i = 0; i < MLX5E_NUM_TT; i++) {
		if (!FUNC0(ttc->rules[i])) {
			FUNC1(ttc->rules[i]);
			ttc->rules[i] = NULL;
		}
	}

	for (i = 0; i < MLX5E_NUM_TUNNEL_TT; i++) {
		if (!FUNC0(ttc->tunnel_rules[i])) {
			FUNC1(ttc->tunnel_rules[i]);
			ttc->tunnel_rules[i] = NULL;
		}
	}
}