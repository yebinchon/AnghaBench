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
struct TYPE_2__ {int /*<<< orphan*/ * args; } ;
struct cx18_in_work_order {char* str; TYPE_1__ mb; } ;
struct cx18 {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CX18_F_I_LOADED_FW ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cx18 *cx, struct cx18_in_work_order *order)
{
	char *p;
	char *str = order->str;

	FUNC0("%x %s\n", order->mb.args[0], str);
	p = FUNC2(str, '.');
	if (!FUNC3(CX18_F_I_LOADED_FW, &cx->i_flags) && p && p > str)
		FUNC1("FW version: %s\n", p - 1);
}