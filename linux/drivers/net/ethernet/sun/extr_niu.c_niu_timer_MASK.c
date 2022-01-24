#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct niu {TYPE_1__ timer; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct niu* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct niu*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*,int) ; 
 struct niu* np ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct niu *np = FUNC1(np, t, timer);
	unsigned long off;
	int err, link_up;

	err = FUNC3(np, &link_up);
	if (!err)
		FUNC4(np, link_up);

	if (FUNC2(np->dev))
		off = 5 * HZ;
	else
		off = 1 * HZ;
	np->timer.expires = jiffies + off;

	FUNC0(&np->timer);
}