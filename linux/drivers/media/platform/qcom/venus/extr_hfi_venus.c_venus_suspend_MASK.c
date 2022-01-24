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
struct venus_core {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct venus_core*) ; 
 scalar_t__ FUNC1 (struct venus_core*) ; 
 int FUNC2 (struct venus_core*) ; 
 int FUNC3 (struct venus_core*) ; 

__attribute__((used)) static int FUNC4(struct venus_core *core)
{
	if (FUNC0(core) || FUNC1(core))
		return FUNC3(core);

	return FUNC2(core);
}