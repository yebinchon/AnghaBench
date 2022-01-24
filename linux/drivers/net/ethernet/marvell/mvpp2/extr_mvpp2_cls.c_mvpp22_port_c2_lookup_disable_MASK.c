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
struct mvpp2_port {int /*<<< orphan*/  priv; int /*<<< orphan*/  id; } ;
struct mvpp2_cls_c2_entry {int /*<<< orphan*/ * tcam; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct mvpp2_cls_c2_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mvpp2_cls_c2_entry*) ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port, int entry)
{
	struct mvpp2_cls_c2_entry c2;

	FUNC2(port->priv, entry, &c2);

	/* Clear the port map so that the entry doesn't match anymore */
	c2.tcam[4] &= ~(FUNC1(FUNC0(port->id)));

	FUNC3(port->priv, &c2);
}