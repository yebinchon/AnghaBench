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
struct r8152 {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int FUNC0 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct r8152 *tp)
{
	if (FUNC3(RTL8152_UNPLUG, &tp->flags))
		return -ENODEV;

	FUNC2(tp);
	FUNC1(tp);

	return FUNC0(tp);
}