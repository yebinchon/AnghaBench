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
struct msb_data {int need_flush_cache; int /*<<< orphan*/  io_work; int /*<<< orphan*/  io_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  cache_flush_timer ; 
 struct msb_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct msb_data* msb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct msb_data *msb = FUNC0(msb, t, cache_flush_timer);
	msb->need_flush_cache = true;
	FUNC1(msb->io_queue, &msb->io_work);
}