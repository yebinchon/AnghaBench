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
struct timer_list {int dummy; } ;
struct b44 {int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 struct b44* bp ; 
 struct b44* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct b44 *bp = FUNC2(bp, t, timer);

	FUNC5(&bp->lock);

	FUNC0(bp);

	FUNC1(bp);

	FUNC6(&bp->lock);

	FUNC3(&bp->timer, FUNC4(jiffies + HZ));
}