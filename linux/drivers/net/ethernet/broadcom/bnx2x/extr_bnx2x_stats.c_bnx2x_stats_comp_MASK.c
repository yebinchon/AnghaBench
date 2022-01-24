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
typedef  scalar_t__ u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ DMAE_COMP_VAL ; 
 scalar_t__* FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* stats_comp ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct bnx2x *bp)
{
	u32 *stats_comp = FUNC1(bp, stats_comp);
	int cnt = 10;

	FUNC2();
	while (*stats_comp != DMAE_COMP_VAL) {
		if (!cnt) {
			FUNC0("timeout waiting for stats finished\n");
			break;
		}
		cnt--;
		FUNC3(1000, 2000);
	}
}