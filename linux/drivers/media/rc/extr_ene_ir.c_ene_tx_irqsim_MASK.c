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
struct ene_device {int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 struct ene_device* dev ; 
 int /*<<< orphan*/  FUNC0 (struct ene_device*) ; 
 struct ene_device* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tx_sim_timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct ene_device *dev = FUNC1(dev, t, tx_sim_timer);
	unsigned long flags;

	FUNC2(&dev->hw_lock, flags);
	FUNC0(dev);
	FUNC3(&dev->hw_lock, flags);
}