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
typedef  scalar_t__ u8 ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(struct aq_hw_s *aq_hw, u8 location)
{
	int i;

	for (i = 0; i < 4; ++i)
		FUNC1(aq_hw,
				FUNC0(location + i),
				0U);
}