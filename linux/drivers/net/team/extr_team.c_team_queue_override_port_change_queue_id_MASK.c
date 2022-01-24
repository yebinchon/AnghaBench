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
typedef  void* u16 ;
struct team_port {void* queue_id; } ;
struct team {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct team*) ; 
 int /*<<< orphan*/  FUNC1 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct team*,struct team_port*) ; 
 scalar_t__ FUNC3 (struct team_port*) ; 

__attribute__((used)) static void FUNC4(struct team *team,
						     struct team_port *port,
						     u16 new_queue_id)
{
	if (FUNC3(port)) {
		FUNC2(team, port);
		port->queue_id = new_queue_id;
		FUNC1(team, port);
		FUNC0(team);
	} else {
		port->queue_id = new_queue_id;
	}
}