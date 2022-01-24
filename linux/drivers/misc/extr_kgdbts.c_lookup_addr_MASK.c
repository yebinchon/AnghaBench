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
 scalar_t__ _do_fork ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ do_sys_open ; 
 int /*<<< orphan*/  hw_break_val ; 
 scalar_t__ kgdbts_break_test ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static unsigned long FUNC2(char *arg)
{
	unsigned long addr = 0;

	if (!FUNC1(arg, "kgdbts_break_test"))
		addr = (unsigned long)kgdbts_break_test;
	else if (!FUNC1(arg, "sys_open"))
		addr = (unsigned long)do_sys_open;
	else if (!FUNC1(arg, "do_fork"))
		addr = (unsigned long)_do_fork;
	else if (!FUNC1(arg, "hw_break_val"))
		addr = (unsigned long)&hw_break_val;
	addr = (unsigned long) FUNC0((void *)addr);
	return addr;
}