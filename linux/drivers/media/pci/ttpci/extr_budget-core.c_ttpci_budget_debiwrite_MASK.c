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
typedef  int /*<<< orphan*/  u32 ;
struct budget {int /*<<< orphan*/  debilock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct budget*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct budget *budget, u32 config, int addr,
			   int count, u32 value, int uselocks, int nobusyloop)
{
	if (count > 4 || count <= 0)
		return 0;

	if (uselocks) {
		unsigned long flags;
		int result;

		FUNC0(&budget->debilock, flags);
		result = FUNC2(budget, config, addr,
						count, value, nobusyloop);
		FUNC1(&budget->debilock, flags);
		return result;
	}
	return FUNC2(budget, config, addr,
					     count, value, nobusyloop);
}