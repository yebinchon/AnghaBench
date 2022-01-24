#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_txqsq {scalar_t__ cc; scalar_t__ pc; int /*<<< orphan*/  sqn; TYPE_1__* channel; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_txqsq *sq)
{
	unsigned long exp_time = jiffies + FUNC0(2000);

	while (FUNC3(jiffies, exp_time)) {
		if (sq->cc == sq->pc)
			return 0;

		FUNC1(20);
	}

	FUNC2(sq->channel->netdev,
		   "Wait for SQ 0x%x flush timeout (sq cc = 0x%x, sq pc = 0x%x)\n",
		   sq->sqn, sq->cc, sq->pc);

	return -ETIMEDOUT;
}