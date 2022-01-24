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
struct team_port {int index; int /*<<< orphan*/  hlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* port_disabled ) (struct team*,struct team_port*) ;} ;
struct team {int /*<<< orphan*/  en_port_count; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct team*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct team*) ; 
 int /*<<< orphan*/  FUNC4 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct team*,struct team_port*) ; 

__attribute__((used)) static void FUNC7(struct team *team,
			      struct team_port *port)
{
	if (!FUNC5(port))
		return;
	if (team->ops.port_disabled)
		team->ops.port_disabled(team, port);
	FUNC1(&port->hlist);
	FUNC0(team, port->index);
	port->index = -1;
	team->en_port_count--;
	FUNC6(team, port);
	FUNC3(team);
	FUNC4(port);
}