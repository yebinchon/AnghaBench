#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_6__* dev; int /*<<< orphan*/  list; } ;
typedef  TYPE_1__ slave_t ;
struct TYPE_13__ {int /*<<< orphan*/  num_slaves; int /*<<< orphan*/  all_slaves; } ;
typedef  TYPE_2__ slave_queue_t ;
struct TYPE_14__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  IFF_SLAVE ; 
 TYPE_1__* FUNC0 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(slave_queue_t *queue, slave_t *slave)
{
	if (!FUNC2(queue)) {
		slave_t *duplicate_slave = NULL;

		duplicate_slave = FUNC0(queue, slave->dev);
		if (duplicate_slave)
			FUNC3(queue, duplicate_slave);

		FUNC1(slave->dev);
		FUNC4(&slave->list, &queue->all_slaves);
		queue->num_slaves++;
		slave->dev->flags |= IFF_SLAVE;

		return 0;
	}

	return -ENOSPC;
}