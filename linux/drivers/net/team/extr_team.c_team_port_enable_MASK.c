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
struct team_port {scalar_t__ index; int /*<<< orphan*/  hlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* port_enabled ) (struct team*,struct team_port*) ;} ;
struct team {TYPE_1__ ops; int /*<<< orphan*/  en_port_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct team*,struct team_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct team*) ; 
 int /*<<< orphan*/  FUNC3 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct team*) ; 
 int /*<<< orphan*/  FUNC5 (struct team*) ; 
 scalar_t__ FUNC6 (struct team_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct team*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct team*,struct team_port*) ; 

__attribute__((used)) static void FUNC9(struct team *team,
			     struct team_port *port)
{
	if (FUNC6(port))
		return;
	port->index = team->en_port_count++;
	FUNC0(&port->hlist,
			   FUNC7(team, port->index));
	FUNC2(team);
	FUNC8(team, port);
	if (team->ops.port_enabled)
		team->ops.port_enabled(team, port);
	FUNC5(team);
	FUNC4(team);
	FUNC3(port);
}