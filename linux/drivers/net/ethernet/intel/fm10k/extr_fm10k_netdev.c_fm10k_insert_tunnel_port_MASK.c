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
struct udp_tunnel_info {int /*<<< orphan*/  sa_family; int /*<<< orphan*/  port; } ;
struct list_head {int dummy; } ;
struct fm10k_udp_port {int /*<<< orphan*/  list; int /*<<< orphan*/  sa_family; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct fm10k_udp_port* FUNC0 (struct list_head*,struct udp_tunnel_info*) ; 
 struct fm10k_udp_port* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static void FUNC3(struct list_head *ports,
				     struct udp_tunnel_info *ti)
{
	struct fm10k_udp_port *port;

	/* remove existing port entry from the list so that the newest items
	 * are always at the tail of the list.
	 */
	port = FUNC0(ports, ti);
	if (!port) {
		port = FUNC1(sizeof(*port), GFP_ATOMIC);
		if  (!port)
			return;
		port->port = ti->port;
		port->sa_family = ti->sa_family;
	}

	FUNC2(&port->list, ports);
}