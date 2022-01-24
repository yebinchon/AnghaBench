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
struct mdio_mux_parent_bus {TYPE_1__* mii_bus; struct mdio_mux_child_bus* children; } ;
struct mdio_mux_child_bus {struct mdio_mux_child_bus* next; int /*<<< orphan*/  mii_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void *mux_handle)
{
	struct mdio_mux_parent_bus *pb = mux_handle;
	struct mdio_mux_child_bus *cb = pb->children;

	while (cb) {
		FUNC1(cb->mii_bus);
		FUNC0(cb->mii_bus);
		cb = cb->next;
	}

	FUNC2(&pb->mii_bus->dev);
}