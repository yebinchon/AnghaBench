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
struct device {int /*<<< orphan*/  parent; } ;
struct ab3100 {int /*<<< orphan*/  startup_events; int /*<<< orphan*/  startup_events_read; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct ab3100* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
					     u8 *event)
{
	struct ab3100 *ab3100 = FUNC0(dev->parent);

	if (!ab3100->startup_events_read)
		return -EAGAIN; /* Try again later */
	FUNC1(event, ab3100->startup_events, 3);

	return 0;
}