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
typedef  unsigned long long u64 ;
struct rvu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rvu *rvu, int idx, u64 intr)
{
	int vf;

	/* Nothing to be done here other than clearing the
	 * TRPEND bit.
	 */
	for (vf = 0; vf < 64; vf++) {
		if (intr & (1ULL << vf)) {
			/* clear the trpend due to ME(master enable) */
			FUNC3(rvu, FUNC2(idx), FUNC0(vf));
			/* clear interrupt */
			FUNC3(rvu, FUNC1(idx), FUNC0(vf));
		}
	}
}