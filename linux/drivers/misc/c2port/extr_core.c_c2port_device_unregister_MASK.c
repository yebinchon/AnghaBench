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
struct c2port_device {int /*<<< orphan*/  id; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  c2port_class ; 
 int /*<<< orphan*/  c2port_idr ; 
 int /*<<< orphan*/  c2port_idr_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct c2port_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct c2port_device *c2dev)
{
	if (!c2dev)
		return;

	FUNC0(c2dev->dev, "C2 port %s removed\n", c2dev->name);

	FUNC4(&c2port_idr_lock);
	FUNC2(&c2port_idr, c2dev->id);
	FUNC5(&c2port_idr_lock);

	FUNC1(c2port_class, c2dev->id);

	FUNC3(c2dev);
}