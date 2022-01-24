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
struct v4l2_async_notifier {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct v4l2_async_notifier *notifier)
{
	FUNC1(&list_lock);

	FUNC0(notifier);

	FUNC2(&list_lock);
}