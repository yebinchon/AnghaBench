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
struct mlx5e_channel {int /*<<< orphan*/  napi; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_CHANNEL_STATE_XSK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx5e_channel *c)
{
	if (FUNC5(MLX5E_CHANNEL_STATE_XSK, c->state))
		FUNC2(c);
	FUNC1(c);
	FUNC4(&c->napi);
	FUNC3(c);

	FUNC0(c);
}