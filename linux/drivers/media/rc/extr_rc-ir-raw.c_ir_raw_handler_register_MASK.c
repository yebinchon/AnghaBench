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
struct ir_raw_handler {int /*<<< orphan*/  protocols; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  available_protocols ; 
 int /*<<< orphan*/  ir_raw_handler_list ; 
 int /*<<< orphan*/  ir_raw_handler_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ir_raw_handler *ir_raw_handler)
{
	FUNC2(&ir_raw_handler_lock);
	FUNC1(&ir_raw_handler->list, &ir_raw_handler_list);
	FUNC0(ir_raw_handler->protocols, &available_protocols);
	FUNC3(&ir_raw_handler_lock);

	return 0;
}