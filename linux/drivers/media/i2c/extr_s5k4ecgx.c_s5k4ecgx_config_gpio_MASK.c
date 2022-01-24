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

/* Variables and functions */
 unsigned long GPIOF_OUT_INIT_HIGH ; 
 unsigned long GPIOF_OUT_INIT_LOW ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,unsigned long,char const*) ; 

__attribute__((used)) static int FUNC3(int nr, int val, const char *name)
{
	unsigned long flags = val ? GPIOF_OUT_INIT_HIGH : GPIOF_OUT_INIT_LOW;
	int ret;

	if (!FUNC1(nr))
		return 0;
	ret = FUNC2(nr, flags, name);
	if (!ret)
		FUNC0(nr, 0);

	return ret;
}