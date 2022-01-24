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
struct slave {int /*<<< orphan*/  link_failure_count; int /*<<< orphan*/  link; TYPE_1__* dev; } ;
struct ifslave {int /*<<< orphan*/  link_failure_count; int /*<<< orphan*/  state; int /*<<< orphan*/  link; int /*<<< orphan*/  slave_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slave*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct slave *slave, struct ifslave *info)
{
	FUNC1(info->slave_name, slave->dev->name);
	info->link = slave->link;
	info->state = FUNC0(slave);
	info->link_failure_count = slave->link_failure_count;
}