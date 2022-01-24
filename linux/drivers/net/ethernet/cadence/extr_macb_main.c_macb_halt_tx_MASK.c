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
typedef  int u32 ;
struct macb {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACB_HALT_TIMEOUT ; 
 int /*<<< orphan*/  NCR ; 
 int /*<<< orphan*/  TGO ; 
 int /*<<< orphan*/  THALT ; 
 int /*<<< orphan*/  TSR ; 
 unsigned long jiffies ; 
 int FUNC1 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct macb *bp)
{
	unsigned long	halt_time, timeout;
	u32		status;

	FUNC2(bp, NCR, FUNC1(bp, NCR) | FUNC0(THALT));

	timeout = jiffies + FUNC5(MACB_HALT_TIMEOUT);
	do {
		halt_time = jiffies;
		status = FUNC1(bp, TSR);
		if (!(status & FUNC0(TGO)))
			return 0;

		FUNC4(250);
	} while (FUNC3(halt_time, timeout));

	return -ETIMEDOUT;
}