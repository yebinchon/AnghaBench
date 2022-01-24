#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct ir_raw_event {int timeout; int /*<<< orphan*/  duration; } ;
struct TYPE_5__ {int /*<<< orphan*/  timeout; } ;
struct TYPE_4__ {TYPE_2__* rcdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct ir_raw_event*) ; 
 TYPE_1__ serial_ir ; 

__attribute__((used)) static void FUNC2(struct timer_list *unused)
{
	struct ir_raw_event ev = {
		.timeout = true,
		.duration = serial_ir.rcdev->timeout
	};
	FUNC1(serial_ir.rcdev, &ev);
	FUNC0(serial_ir.rcdev);
}