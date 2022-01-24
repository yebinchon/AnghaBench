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
struct mlx5e_channel {int num_tc; int /*<<< orphan*/ * sq; int /*<<< orphan*/  icosq; int /*<<< orphan*/  rq; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_CHANNEL_STATE_XSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_channel*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx5e_channel *c)
{
	int tc;

	if (FUNC4(MLX5E_CHANNEL_STATE_XSK, c->state))
		FUNC3(c);

	FUNC1(&c->rq);
	FUNC0(&c->icosq);
	for (tc = 0; tc < c->num_tc; tc++)
		FUNC2(&c->sq[tc]);
}