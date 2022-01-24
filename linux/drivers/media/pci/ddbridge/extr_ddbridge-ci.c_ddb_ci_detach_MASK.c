#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ddb_port {TYPE_2__* en; scalar_t__ en_freedata; TYPE_1__* dvb; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** i2c_client; scalar_t__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ddb_port *port)
{
	if (port->dvb[0].dev)
		FUNC2(port->dvb[0].dev);
	if (port->en) {
		FUNC0(port->en);

		FUNC1(port->dvb[0].i2c_client[0]);
		port->dvb[0].i2c_client[0] = NULL;

		/* free alloc'ed memory if needed */
		if (port->en_freedata)
			FUNC3(port->en->data);

		port->en = NULL;
	}
}