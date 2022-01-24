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
struct team_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* port_leave ) (struct team*,struct team_port*) ;} ;
struct team {int /*<<< orphan*/  dev; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct team*,struct team_port*) ; 

__attribute__((used)) static void FUNC2(struct team *team, struct team_port *port)
{
	if (team->ops.port_leave)
		team->ops.port_leave(team, port);
	FUNC0(team->dev);
}