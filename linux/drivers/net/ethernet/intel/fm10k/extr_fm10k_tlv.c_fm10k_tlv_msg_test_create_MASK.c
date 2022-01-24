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

/* Variables and functions */
 int FM10K_TEST_MSG_NESTED ; 
 int /*<<< orphan*/  FM10K_TLV_MSG_ID_TEST ; 
 int* FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 

void FUNC4(u32 *msg, u32 attr_flags)
{
	u32 *nest = NULL;

	FUNC2(msg, FM10K_TLV_MSG_ID_TEST);

	FUNC3(msg, attr_flags);

	/* check for nested attributes */
	attr_flags >>= FM10K_TEST_MSG_NESTED;

	if (attr_flags) {
		nest = FUNC0(msg, FM10K_TEST_MSG_NESTED);

		FUNC3(nest, attr_flags);

		FUNC1(msg);
	}
}