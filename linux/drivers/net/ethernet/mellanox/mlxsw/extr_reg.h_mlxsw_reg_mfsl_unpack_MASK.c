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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline void FUNC2(char *payload, u8 tacho,
					 u16 *p_tach_min, u16 *p_tach_max)
{
	if (p_tach_min)
		*p_tach_min = FUNC1(payload);

	if (p_tach_max)
		*p_tach_max = FUNC0(payload);
}