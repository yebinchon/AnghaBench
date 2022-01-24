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
typedef  int /*<<< orphan*/  u16 ;
struct scif_port {int /*<<< orphan*/  ref_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_lock; } ;

/* Variables and functions */
 struct scif_port* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scif_port*) ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  scif_ports ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(u16 id)
{
	struct scif_port *port;

	if (!id)
		return;
	FUNC3(&scif_info.port_lock);
	port = FUNC0(&scif_ports, id);
	if (port) {
		port->ref_cnt--;
		if (!port->ref_cnt) {
			FUNC1(&scif_ports, id);
			FUNC2(port);
		}
	}
	FUNC4(&scif_info.port_lock);
}