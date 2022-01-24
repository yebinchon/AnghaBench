#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qp_entry {int dummy; } ;
struct qp_broker_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qp_broker_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ qp_broker_list ; 
 struct qp_entry* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct qp_entry*) ; 

void FUNC5(void)
{
	struct qp_entry *entry;
	struct qp_broker_entry *be;

	FUNC1(&qp_broker_list.mutex);

	while ((entry = FUNC3(&qp_broker_list))) {
		be = (struct qp_broker_entry *)entry;

		FUNC4(&qp_broker_list, entry);
		FUNC0(be);
	}

	FUNC2(&qp_broker_list.mutex);
}