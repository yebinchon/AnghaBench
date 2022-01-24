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
struct r8152 {scalar_t__ version; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 scalar_t__ RTL_VER_01 ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct r8152 *tp)
{
	if (FUNC1(RTL8152_UNPLUG, &tp->flags))
		return;

	if (tp->version != RTL_VER_01)
		FUNC0(tp, true);
}