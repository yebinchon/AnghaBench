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
struct scif_port {int /*<<< orphan*/  ref_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ *,struct scif_port*,int,int,int /*<<< orphan*/ ) ; 
 struct scif_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  scif_ports ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(int start, int end)
{
	int id;
	struct scif_port *port = FUNC1(sizeof(*port), GFP_ATOMIC);

	if (!port)
		return -ENOMEM;
	FUNC2(&scif_info.port_lock);
	id = FUNC0(&scif_ports, port, start, end, GFP_ATOMIC);
	if (id >= 0)
		port->ref_cnt++;
	FUNC3(&scif_info.port_lock);
	return id;
}