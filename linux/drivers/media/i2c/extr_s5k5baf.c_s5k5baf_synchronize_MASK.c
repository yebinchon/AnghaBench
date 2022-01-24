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
typedef  int /*<<< orphan*/  u16 ;
struct s5k5baf {int /*<<< orphan*/  error; int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s5k5baf*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct s5k5baf *state, int timeout, u16 addr)
{
	unsigned long end = jiffies + FUNC0(timeout);
	u16 reg;

	FUNC2(state, addr, 1);
	do {
		reg = FUNC1(state, addr);
		if (state->error || !reg)
			return;
		FUNC4(5000, 10000);
	} while (FUNC3(end));

	FUNC5(&state->sd, "timeout on register synchronize (%#x)\n", addr);
	state->error = -ETIMEDOUT;
}