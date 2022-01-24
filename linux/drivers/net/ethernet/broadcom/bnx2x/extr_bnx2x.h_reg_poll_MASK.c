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
 scalar_t__ FUNC0 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline u32 FUNC2(struct bnx2x *bp, u32 reg, u32 expected, int ms,
			   int wait)
{
	u32 val;

	do {
		val = FUNC0(bp, reg);
		if (val == expected)
			break;
		ms -= wait;
		FUNC1(wait);

	} while (ms > 0);

	return val;
}