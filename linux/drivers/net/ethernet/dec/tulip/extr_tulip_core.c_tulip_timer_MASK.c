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
struct tulip_private {int /*<<< orphan*/  media_work; struct net_device* dev; } ;
struct timer_list {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct tulip_private* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 struct tulip_private* tp ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct tulip_private *tp = FUNC0(tp, t, timer);
	struct net_device *dev = tp->dev;

	if (FUNC1(dev))
		FUNC2(&tp->media_work);
}