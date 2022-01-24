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
struct igorplugusb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GET_INFRACODE ; 
 struct igorplugusb* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igorplugusb*,int /*<<< orphan*/ ) ; 
 struct igorplugusb* ir ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct igorplugusb *ir = FUNC0(ir, t, timer);

	FUNC1(ir, GET_INFRACODE);
}