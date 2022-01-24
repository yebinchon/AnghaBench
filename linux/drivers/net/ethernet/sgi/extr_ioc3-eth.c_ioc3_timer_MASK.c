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
struct ioc3_private {TYPE_1__ ioc3_timer; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct ioc3_private* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,void (*) (struct timer_list*)) ; 
 int /*<<< orphan*/  FUNC2 (struct ioc3_private*) ; 
 struct ioc3_private* ip ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct ioc3_private *ip = FUNC1(ip, t, ioc3_timer);

	/* Print the link status if it has changed */
	FUNC3(&ip->mii, 1, 0);
	FUNC2(ip);

	ip->ioc3_timer.expires = jiffies + ((12 * HZ) / 10); /* 1.2s */
	FUNC0(&ip->ioc3_timer);
}