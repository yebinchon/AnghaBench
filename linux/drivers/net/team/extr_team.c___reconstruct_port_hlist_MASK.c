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
struct team_port {int /*<<< orphan*/  index; int /*<<< orphan*/  hlist; } ;
struct team {int en_port_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct team_port* FUNC2 (struct team*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct team*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct team *team, int rm_index)
{
	int i;
	struct team_port *port;

	for (i = rm_index + 1; i < team->en_port_count; i++) {
		port = FUNC2(team, i);
		FUNC1(&port->hlist);
		port->index--;
		FUNC0(&port->hlist,
				   FUNC3(team, port->index));
	}
}