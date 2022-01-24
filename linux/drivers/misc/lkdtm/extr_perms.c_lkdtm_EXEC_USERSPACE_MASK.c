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
 int MAP_ANONYMOUS ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 unsigned long TASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

void FUNC4(void)
{
	unsigned long user_addr;

	user_addr = FUNC2(NULL, 0, PAGE_SIZE,
			    PROT_READ | PROT_WRITE | PROT_EXEC,
			    MAP_ANONYMOUS | MAP_PRIVATE, 0);
	if (user_addr >= TASK_SIZE) {
		FUNC1("Failed to allocate user memory\n");
		return;
	}
	FUNC0((void *)user_addr);
	FUNC3(user_addr, PAGE_SIZE);
}