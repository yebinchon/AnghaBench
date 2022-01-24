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
struct ddb_port {int class; int /*<<< orphan*/ * input; } ;
struct ddb {int port_num; struct ddb_port* port; } ;

/* Variables and functions */
#define  DDB_PORT_CI 130 
#define  DDB_PORT_LOOP 129 
#define  DDB_PORT_TUNER 128 
 int /*<<< orphan*/  FUNC0 (struct ddb_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ddb*) ; 

void FUNC3(struct ddb *dev)
{
	int i;
	struct ddb_port *port;

	for (i = 0; i < dev->port_num; i++) {
		port = &dev->port[i];

		switch (port->class) {
		case DDB_PORT_TUNER:
			FUNC1(port->input[1]);
			FUNC1(port->input[0]);
			break;
		case DDB_PORT_CI:
		case DDB_PORT_LOOP:
			FUNC0(port);
			break;
		}
	}
	FUNC2(dev);
}