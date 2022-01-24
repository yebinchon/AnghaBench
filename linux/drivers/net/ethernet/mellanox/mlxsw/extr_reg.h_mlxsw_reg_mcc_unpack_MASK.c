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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static inline void FUNC3(char *payload, u32 *p_update_handle,
					u8 *p_error_code, u8 *p_control_state)
{
	if (p_update_handle)
		*p_update_handle = FUNC2(payload);
	if (p_error_code)
		*p_error_code = FUNC1(payload);
	if (p_control_state)
		*p_control_state = FUNC0(payload);
}